RecordType 0x14687d740 'struct __sFILEX'
`-Record 0x14687d6b8 '__sFILEX'
ST: %struct.__sFILEX = type opaque
fields
types
Assertion failed: (types.size()), function getMLIRType, file clang-mlir.cc, line 5637.
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist ./PolyBenchC/./linear-algebra/blas/gemver/gemver.c -O0 -function=* -S --sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I PolyBenchC/utilities
1.	<eof> parser at end of file
 #0 0x000000010540badc llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1032bfadc)
 #1 0x000000010540c0b8 PrintStackTraceSignalHandler(void*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1032c00b8)
 #2 0x0000000105409d6c llvm::sys::RunSignalHandlers() (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1032bdd6c)
 #3 0x000000010540d1d4 SignalHandler(int) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1032c11d4)
 #4 0x00000001a9aa6a24 (/usr/lib/system/libsystem_platform.dylib+0x18042ea24)
 #5 0x00000001a9a77c28 (/usr/lib/system/libsystem_pthread.dylib+0x1803ffc28)
 #6 0x00000001a9985ae8 (/usr/lib/system/libsystem_c.dylib+0x18030dae8)
 #7 0x00000001a9984e44 (/usr/lib/system/libsystem_c.dylib+0x18030ce44)
 #8 0x00000001021577f4 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000b7f4)
 #9 0x00000001021568b0 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000a8b0)
#10 0x0000000102158374 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000c374)
#11 0x00000001021573b0 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000b3b0)
#12 0x00000001021568b0 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000a8b0)
#13 0x0000000102156a90 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000aa90)
#14 0x00000001021568b0 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000a8b0)
#15 0x0000000102158374 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000c374)
#16 0x0000000102158374 MLIRASTConsumer::getMLIRType(clang::QualType, bool*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10000c374)
#17 0x0000000102188c04 MLIRScanner::VisitDeclRefExpr(clang::DeclRefExpr*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10003cc04)
#18 0x000000010215ef90 clang::StmtVisitorBase<std::__1::add_pointer, MLIRScanner, ValueCategory>::Visit(clang::Stmt*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100012f90)
#19 0x000000010216d074 MLIRScanner::VisitCastExpr(clang::CastExpr*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100021074)
#20 0x0000000102382b40 clang::StmtVisitorBase<std::__1::add_pointer, MLIRScanner, ValueCategory>::VisitImplicitCastExpr(clang::ImplicitCastExpr*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100236b40)
#21 0x000000010215eed0 clang::StmtVisitorBase<std::__1::add_pointer, MLIRScanner, ValueCategory>::Visit(clang::Stmt*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100012ed0)
#22 0x000000010241eb30 MLIRScanner::getLLVM(clang::Expr*, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1002d2b30)
#23 0x0000000102427fe4 MLIRScanner::VisitCallExpr(clang::CallExpr*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1002dbfe4)
#24 0x000000010215ed80 clang::StmtVisitorBase<std::__1::add_pointer, MLIRScanner, ValueCategory>::Visit(clang::Stmt*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100012d80)
#25 0x00000001023d7d64 MLIRScanner::VisitCompoundStmt(clang::CompoundStmt*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10028bd64)
#26 0x000000010215e0c0 clang::StmtVisitorBase<std::__1::add_pointer, MLIRScanner, ValueCategory>::Visit(clang::Stmt*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1000120c0)
#27 0x0000000102155f2c MLIRScanner::init(mlir::func::FuncOp, clang::FunctionDecl const*) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100009f2c)
#28 0x00000001021927e0 MLIRASTConsumer::run() (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x1000467e0)
#29 0x0000000102193c8c MLIRASTConsumer::HandleTranslationUnit(clang::ASTContext&) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100047c8c)
#30 0x000000010f42142c clang::ParseAST(clang::Sema&, bool, bool) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10d2d542c)
#31 0x0000000108a86a78 clang::ASTFrontendAction::ExecuteAction() (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10693aa78)
#32 0x0000000108a86244 clang::FrontendAction::Execute() (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10693a244)
#33 0x000000010219ce84 parseMLIR(char const*, std::__1::vector<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::vector<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>, std::__1::vector<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>>>>, mlir::OwningOpRef<mlir::ModuleOp>&, llvm::Triple&, llvm::DataLayout&, llvm::Triple&, llvm::DataLayout&) (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x100050e84)
#34 0x0000000102196ba0 main (/Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist+0x10004aba0)
#35 0x00000001a971ffd8 
run01.cgeist_c_to_scf.sh: line 13: 21553 Abort trap: 6           /Users/peng599/pppp/comet-amais-memory/Polygeist-ivanradanov-patch-1/cmake-build-debug-unified/bin/cgeist ./PolyBenchC/./linear-algebra/blas/gemver/gemver.c -O0 -function=* -S --sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I PolyBenchC/utilities
