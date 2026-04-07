#include <iostream>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <cstring>
#include <cerrno>

// Physical address to map (this is hardware-specific!)
#define PHYS_ADDR 0x10000000  // Example address - must be replaced with actual hardware address
#define MAP_SIZE 4096          // Size of the memory region to map

int main() {
    int fd;
    volatile unsigned char *map_base;
    
    // Open /dev/mem to get access to physical memory
    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd == -1) {
        std::cerr << "Error opening /dev/mem: " << strerror(errno) << std::endl;
        return 1;
    }
    
    // Memory map the physical address
    map_base = (unsigned char*)mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, 
                                     MAP_SHARED, fd, PHYS_ADDR);
    if (map_base == MAP_FAILED) {
        std::cerr << "Memory mapping failed: " << strerror(errno) << std::endl;
        close(fd);
        return 1;
    }
    
    std::cout << "Memory mapped successfully" << std::endl;
    
    // Read or write to the memory region
    // Example: Read a value
    unsigned int value = *(volatile unsigned int*)(map_base);
    std::cout << "Value read: 0x" << std::hex << value << std::endl;
    
    // Example: Write a value
    *(volatile unsigned int*)(map_base) = 0x12345678;
    std::cout << "Value written: 0x12345678" << std::endl;
    
    // Unmap and close
    if (munmap((void*)map_base, MAP_SIZE) == -1) {
        std::cerr << "Memory unmapping failed: " << strerror(errno) << std::endl;
    }
    
    close(fd);
    return 0;
}