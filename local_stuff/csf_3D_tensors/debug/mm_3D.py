import numpy as np

def mm_3D():
    # Define the size of the 3D tensor
    size = (4, 4, 4)

    # Create a random 3D tensor
    tensor = np.zeros(size)
    tensor[0, 0, 0] = 1.7
    tensor[1, 1, 1] = 2.7
    tensor[1, 0, 2] = 3.7
    tensor[3, 2, 1] = 4.7

    C = np.zeros((4, 4))
    C.fill(1.2)

    T = np.matmul(tensor, C)

    # Print the shape of the tensor
    print("Shape of the tensor:", tensor.shape)

    # Print the tensor
    # print("Tensor:")
    # print(tensor)
    print("T:")
    print(T)

def mttkrp_3D():
    # Define the size of the 3D tensor
    size = (4, 4, 4)

    # Create a random 3D tensor
    tensor = np.zeros(size)
    tensor[0, 0, 0] = 1.7
    tensor[1, 1, 1] = 2.7
    tensor[1, 0, 2] = 3.7
    tensor[3, 2, 1] = 4.7

    C = np.zeros((4, 4))
    B = np.zeros((4, 4))
    C.fill(1.2)
    B.fill(3.4)

    T = np.matmul(tensor, C)
    A = np.matmul(T, B)

    # Print the shape of the tensor
    print("Shape of the tensor:", tensor.shape)

    # Print the tensor
    # print("Tensor:")
    # print(tensor)
    print("T:")
    print(T)
    print("A:")
    print(A)

if __name__ == "__main__":
    # mm_3D()
    mttkrp_3D()