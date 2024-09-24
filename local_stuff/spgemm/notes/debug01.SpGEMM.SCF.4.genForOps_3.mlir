module {
  func.func @main() {
    %0 = "ta.index_label"() : () -> !ta.indexlabel
    %1 = "ta.index_label"() : () -> !ta.indexlabel
    %2 = "ta.index_label"() : () -> !ta.indexlabel
    %alloc = memref.alloc() : memref<13xindex>
    %cast = memref.cast %alloc : memref<13xindex> to memref<*xindex>
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    call @read_input_sizes_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %c0_0 = arith.constant 0 : index
    %3 = memref.load %alloc[%c0_0] : memref<13xindex>
    %c1_1 = arith.constant 1 : index
    %4 = memref.load %alloc[%c1_1] : memref<13xindex>
    %c2_2 = arith.constant 2 : index
    %5 = memref.load %alloc[%c2_2] : memref<13xindex>
    %c3_3 = arith.constant 3 : index
    %6 = memref.load %alloc[%c3_3] : memref<13xindex>
    %c4 = arith.constant 4 : index
    %7 = memref.load %alloc[%c4] : memref<13xindex>
    %c5 = arith.constant 5 : index
    %8 = memref.load %alloc[%c5] : memref<13xindex>
    %c6 = arith.constant 6 : index
    %9 = memref.load %alloc[%c6] : memref<13xindex>
    %c7 = arith.constant 7 : index
    %10 = memref.load %alloc[%c7] : memref<13xindex>
    %c8 = arith.constant 8 : index
    %11 = memref.load %alloc[%c8] : memref<13xindex>
    %c9 = arith.constant 9 : index
    %12 = memref.load %alloc[%c9] : memref<13xindex>
    %c10 = arith.constant 10 : index
    %13 = memref.load %alloc[%c10] : memref<13xindex>
    %c11 = arith.constant 11 : index
    %14 = memref.load %alloc[%c11] : memref<13xindex>
    %c12 = arith.constant 12 : index
    %15 = memref.load %alloc[%c12] : memref<13xindex>
    %alloc_4 = memref.alloc(%3) : memref<?xindex>
    %c0_5 = arith.constant 0 : index
    %c0_6 = arith.constant 0 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg0 = %c0_6 to %3 step %c1_7 {
      memref.store %c0_5, %alloc_4[%arg0] : memref<?xindex>
    }
    %cast_8 = memref.cast %alloc_4 : memref<?xindex> to memref<*xindex>
    %alloc_9 = memref.alloc(%4) : memref<?xindex>
    %c0_10 = arith.constant 0 : index
    %c0_11 = arith.constant 0 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg0 = %c0_11 to %4 step %c1_12 {
      memref.store %c0_10, %alloc_9[%arg0] : memref<?xindex>
    }
    %cast_13 = memref.cast %alloc_9 : memref<?xindex> to memref<*xindex>
    %alloc_14 = memref.alloc(%5) : memref<?xindex>
    %c0_15 = arith.constant 0 : index
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg0 = %c0_16 to %5 step %c1_17 {
      memref.store %c0_15, %alloc_14[%arg0] : memref<?xindex>
    }
    %cast_18 = memref.cast %alloc_14 : memref<?xindex> to memref<*xindex>
    %alloc_19 = memref.alloc(%6) : memref<?xindex>
    %c0_20 = arith.constant 0 : index
    %c0_21 = arith.constant 0 : index
    %c1_22 = arith.constant 1 : index
    scf.for %arg0 = %c0_21 to %6 step %c1_22 {
      memref.store %c0_20, %alloc_19[%arg0] : memref<?xindex>
    }
    %cast_23 = memref.cast %alloc_19 : memref<?xindex> to memref<*xindex>
    %alloc_24 = memref.alloc(%7) : memref<?xindex>
    %c0_25 = arith.constant 0 : index
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    scf.for %arg0 = %c0_26 to %7 step %c1_27 {
      memref.store %c0_25, %alloc_24[%arg0] : memref<?xindex>
    }
    %cast_28 = memref.cast %alloc_24 : memref<?xindex> to memref<*xindex>
    %alloc_29 = memref.alloc(%8) : memref<?xindex>
    %c0_30 = arith.constant 0 : index
    %c0_31 = arith.constant 0 : index
    %c1_32 = arith.constant 1 : index
    scf.for %arg0 = %c0_31 to %8 step %c1_32 {
      memref.store %c0_30, %alloc_29[%arg0] : memref<?xindex>
    }
    %cast_33 = memref.cast %alloc_29 : memref<?xindex> to memref<*xindex>
    %alloc_34 = memref.alloc(%9) : memref<?xindex>
    %c0_35 = arith.constant 0 : index
    %c0_36 = arith.constant 0 : index
    %c1_37 = arith.constant 1 : index
    scf.for %arg0 = %c0_36 to %9 step %c1_37 {
      memref.store %c0_35, %alloc_34[%arg0] : memref<?xindex>
    }
    %cast_38 = memref.cast %alloc_34 : memref<?xindex> to memref<*xindex>
    %alloc_39 = memref.alloc(%10) : memref<?xindex>
    %c0_40 = arith.constant 0 : index
    %c0_41 = arith.constant 0 : index
    %c1_42 = arith.constant 1 : index
    scf.for %arg0 = %c0_41 to %10 step %c1_42 {
      memref.store %c0_40, %alloc_39[%arg0] : memref<?xindex>
    }
    %cast_43 = memref.cast %alloc_39 : memref<?xindex> to memref<*xindex>
    %alloc_44 = memref.alloc(%11) : memref<?xf64>
    %cst = arith.constant 0.000000e+00 : f64
    %c0_45 = arith.constant 0 : index
    %c1_46 = arith.constant 1 : index
    scf.for %arg0 = %c0_45 to %11 step %c1_46 {
      memref.store %cst, %alloc_44[%arg0] : memref<?xf64>
    }
    %cast_47 = memref.cast %alloc_44 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c0_i32, %c0, %c-1, %c1, %c-1, %cast_8, %cast_13, %cast_18, %cast_23, %cast_28, %cast_33, %cast_38, %cast_43, %cast_47, %c1_i32) {filename = "SPARSE_FILE_NAME0"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %16 = bufferization.to_tensor %alloc_4 : memref<?xindex>
    %17 = bufferization.to_tensor %alloc_9 : memref<?xindex>
    %18 = bufferization.to_tensor %alloc_14 : memref<?xindex>
    %19 = bufferization.to_tensor %alloc_19 : memref<?xindex>
    %20 = bufferization.to_tensor %alloc_24 : memref<?xindex>
    %21 = bufferization.to_tensor %alloc_29 : memref<?xindex>
    %22 = bufferization.to_tensor %alloc_34 : memref<?xindex>
    %23 = bufferization.to_tensor %alloc_39 : memref<?xindex>
    %24 = bufferization.to_tensor %alloc_44 : memref<?xf64>
    %25 = ta.spTensor_construct(%16, %17, %18, %19, %20, %21, %22, %23, %24, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
    %c0_48 = arith.constant 0 : index
    %c1_49 = arith.constant 1 : index
    %alloc_50 = memref.alloc() : memref<13xindex>
    %cast_51 = memref.cast %alloc_50 : memref<13xindex> to memref<*xindex>
    %c-1_52 = arith.constant -1 : index
    %c0_53 = arith.constant 0 : index
    %c1_54 = arith.constant 1 : index
    %c2_55 = arith.constant 2 : index
    %c3_56 = arith.constant 3 : index
    %c1_i32_57 = arith.constant 1 : i32
    %c1_i32_58 = arith.constant 1 : i32
    call @read_input_sizes_2D_f64(%c1_i32_57, %c0_53, %c-1_52, %c1_54, %c-1_52, %cast_51, %c1_i32_58) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, i32) -> ()
    %c0_59 = arith.constant 0 : index
    %26 = memref.load %alloc_50[%c0_59] : memref<13xindex>
    %c1_60 = arith.constant 1 : index
    %27 = memref.load %alloc_50[%c1_60] : memref<13xindex>
    %c2_61 = arith.constant 2 : index
    %28 = memref.load %alloc_50[%c2_61] : memref<13xindex>
    %c3_62 = arith.constant 3 : index
    %29 = memref.load %alloc_50[%c3_62] : memref<13xindex>
    %c4_63 = arith.constant 4 : index
    %30 = memref.load %alloc_50[%c4_63] : memref<13xindex>
    %c5_64 = arith.constant 5 : index
    %31 = memref.load %alloc_50[%c5_64] : memref<13xindex>
    %c6_65 = arith.constant 6 : index
    %32 = memref.load %alloc_50[%c6_65] : memref<13xindex>
    %c7_66 = arith.constant 7 : index
    %33 = memref.load %alloc_50[%c7_66] : memref<13xindex>
    %c8_67 = arith.constant 8 : index
    %34 = memref.load %alloc_50[%c8_67] : memref<13xindex>
    %c9_68 = arith.constant 9 : index
    %35 = memref.load %alloc_50[%c9_68] : memref<13xindex>
    %c10_69 = arith.constant 10 : index
    %36 = memref.load %alloc_50[%c10_69] : memref<13xindex>
    %c11_70 = arith.constant 11 : index
    %37 = memref.load %alloc_50[%c11_70] : memref<13xindex>
    %c12_71 = arith.constant 12 : index
    %38 = memref.load %alloc_50[%c12_71] : memref<13xindex>
    %alloc_72 = memref.alloc(%26) : memref<?xindex>
    %c0_73 = arith.constant 0 : index
    %c0_74 = arith.constant 0 : index
    %c1_75 = arith.constant 1 : index
    scf.for %arg0 = %c0_74 to %26 step %c1_75 {
      memref.store %c0_73, %alloc_72[%arg0] : memref<?xindex>
    }
    %cast_76 = memref.cast %alloc_72 : memref<?xindex> to memref<*xindex>
    %alloc_77 = memref.alloc(%27) : memref<?xindex>
    %c0_78 = arith.constant 0 : index
    %c0_79 = arith.constant 0 : index
    %c1_80 = arith.constant 1 : index
    scf.for %arg0 = %c0_79 to %27 step %c1_80 {
      memref.store %c0_78, %alloc_77[%arg0] : memref<?xindex>
    }
    %cast_81 = memref.cast %alloc_77 : memref<?xindex> to memref<*xindex>
    %alloc_82 = memref.alloc(%28) : memref<?xindex>
    %c0_83 = arith.constant 0 : index
    %c0_84 = arith.constant 0 : index
    %c1_85 = arith.constant 1 : index
    scf.for %arg0 = %c0_84 to %28 step %c1_85 {
      memref.store %c0_83, %alloc_82[%arg0] : memref<?xindex>
    }
    %cast_86 = memref.cast %alloc_82 : memref<?xindex> to memref<*xindex>
    %alloc_87 = memref.alloc(%29) : memref<?xindex>
    %c0_88 = arith.constant 0 : index
    %c0_89 = arith.constant 0 : index
    %c1_90 = arith.constant 1 : index
    scf.for %arg0 = %c0_89 to %29 step %c1_90 {
      memref.store %c0_88, %alloc_87[%arg0] : memref<?xindex>
    }
    %cast_91 = memref.cast %alloc_87 : memref<?xindex> to memref<*xindex>
    %alloc_92 = memref.alloc(%30) : memref<?xindex>
    %c0_93 = arith.constant 0 : index
    %c0_94 = arith.constant 0 : index
    %c1_95 = arith.constant 1 : index
    scf.for %arg0 = %c0_94 to %30 step %c1_95 {
      memref.store %c0_93, %alloc_92[%arg0] : memref<?xindex>
    }
    %cast_96 = memref.cast %alloc_92 : memref<?xindex> to memref<*xindex>
    %alloc_97 = memref.alloc(%31) : memref<?xindex>
    %c0_98 = arith.constant 0 : index
    %c0_99 = arith.constant 0 : index
    %c1_100 = arith.constant 1 : index
    scf.for %arg0 = %c0_99 to %31 step %c1_100 {
      memref.store %c0_98, %alloc_97[%arg0] : memref<?xindex>
    }
    %cast_101 = memref.cast %alloc_97 : memref<?xindex> to memref<*xindex>
    %alloc_102 = memref.alloc(%32) : memref<?xindex>
    %c0_103 = arith.constant 0 : index
    %c0_104 = arith.constant 0 : index
    %c1_105 = arith.constant 1 : index
    scf.for %arg0 = %c0_104 to %32 step %c1_105 {
      memref.store %c0_103, %alloc_102[%arg0] : memref<?xindex>
    }
    %cast_106 = memref.cast %alloc_102 : memref<?xindex> to memref<*xindex>
    %alloc_107 = memref.alloc(%33) : memref<?xindex>
    %c0_108 = arith.constant 0 : index
    %c0_109 = arith.constant 0 : index
    %c1_110 = arith.constant 1 : index
    scf.for %arg0 = %c0_109 to %33 step %c1_110 {
      memref.store %c0_108, %alloc_107[%arg0] : memref<?xindex>
    }
    %cast_111 = memref.cast %alloc_107 : memref<?xindex> to memref<*xindex>
    %alloc_112 = memref.alloc(%34) : memref<?xf64>
    %cst_113 = arith.constant 0.000000e+00 : f64
    %c0_114 = arith.constant 0 : index
    %c1_115 = arith.constant 1 : index
    scf.for %arg0 = %c0_114 to %34 step %c1_115 {
      memref.store %cst_113, %alloc_112[%arg0] : memref<?xf64>
    }
    %cast_116 = memref.cast %alloc_112 : memref<?xf64> to memref<*xf64>
    call @read_input_2D_f64(%c1_i32_57, %c0_53, %c-1_52, %c1_54, %c-1_52, %cast_76, %cast_81, %cast_86, %cast_91, %cast_96, %cast_101, %cast_106, %cast_111, %cast_116, %c1_i32_58) {filename = "SPARSE_FILE_NAME1"} : (i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32) -> ()
    %39 = bufferization.to_tensor %alloc_72 : memref<?xindex>
    %40 = bufferization.to_tensor %alloc_77 : memref<?xindex>
    %41 = bufferization.to_tensor %alloc_82 : memref<?xindex>
    %42 = bufferization.to_tensor %alloc_87 : memref<?xindex>
    %43 = bufferization.to_tensor %alloc_92 : memref<?xindex>
    %44 = bufferization.to_tensor %alloc_97 : memref<?xindex>
    %45 = bufferization.to_tensor %alloc_102 : memref<?xindex>
    %46 = bufferization.to_tensor %alloc_107 : memref<?xindex>
    %47 = bufferization.to_tensor %alloc_112 : memref<?xf64>
    %48 = ta.spTensor_construct(%39, %40, %41, %42, %43, %44, %45, %46, %47, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
    %c1_117 = arith.constant 1 : index
    %49 = "ta.getTime"() : () -> f64
    %alloc_118 = memref.alloc(%36) {alignment = 32 : i64} : memref<?xf64>
    %cst_119 = arith.constant 0.000000e+00 : f64
    %c0_120 = arith.constant 0 : index
    %c1_121 = arith.constant 1 : index
    scf.for %arg0 = %c0_120 to %36 step %c1_121 {
      memref.store %cst_119, %alloc_118[%arg0] : memref<?xf64>
    }
    %50 = bufferization.to_tensor %alloc_118 : memref<?xf64>
    %alloc_122 = memref.alloc(%36) {alignment = 32 : i64} : memref<?xindex>
    %c0_123 = arith.constant 0 : index
    %c0_124 = arith.constant 0 : index
    %c1_125 = arith.constant 1 : index
    scf.for %arg0 = %c0_124 to %36 step %c1_125 {
      memref.store %c0_123, %alloc_122[%arg0] : memref<?xindex>
    }
    %51 = bufferization.to_tensor %alloc_122 : memref<?xindex>
    %alloc_126 = memref.alloc(%36) {alignment = 32 : i64} : memref<?xindex>
    %c0_127 = arith.constant 0 : index
    %c0_128 = arith.constant 0 : index
    %c1_129 = arith.constant 1 : index
    scf.for %arg0 = %c0_128 to %36 step %c1_129 {
      memref.store %c0_127, %alloc_126[%arg0] : memref<?xindex>
    }
    %52 = bufferization.to_tensor %alloc_126 : memref<?xindex>
    %alloc_130 = memref.alloc() : memref<1xindex>
    %53 = bufferization.to_tensor %alloc_130 : memref<1xindex>
    %c0_131 = arith.constant 0 : index
    %54 = "it.ComputeRHS"(%c0_131) <{allFormats = [[]], allPerms = [[]]}> : (index) -> tensor<*xindex>
    %55 = "it.ComputeLHS"(%53) <{allFormats = [[]], allPerms = [[]]}> : (tensor<1xindex>) -> tensor<*xf64>
    %56 = "it.Compute"(%54, %55) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xindex>, tensor<*xf64>) -> i64
    %57 = "it.ComputeRHS"(%25, %48) <{allFormats = [["D", "CU"], ["D", "CU"]], allPerms = [[0, 1], [1, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, !ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>) -> tensor<*xf64>
    %58 = "it.ComputeLHS"(%50, %51, %52, %53) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %59 = "it.Compute"(%57, %58) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %60 = "it.ComputeRHS"(%50, %51, %52, %53) <{allFormats = [["D"]], allPerms = [[2]]}> : (tensor<?xf64>, tensor<?xindex>, tensor<?xindex>, tensor<1xindex>) -> tensor<*xf64>
    %c0_132 = arith.constant 0 : index
    %c1_133 = arith.constant 1 : index
    %61 = arith.addi %12, %c1_133 : index
    %62 = arith.muli %12, %36 : index
    %alloc_134 = memref.alloc(%c1_133) : memref<?xindex>
    %c0_135 = arith.constant 0 : index
    %c0_136 = arith.constant 0 : index
    %c1_137 = arith.constant 1 : index
    scf.for %arg0 = %c0_136 to %c1_133 step %c1_137 {
      memref.store %c0_135, %alloc_134[%arg0] : memref<?xindex>
    }
    %63 = bufferization.to_tensor %alloc_134 : memref<?xindex>
    %alloc_138 = memref.alloc(%c1_133) : memref<?xindex>
    %c0_139 = arith.constant 0 : index
    %c0_140 = arith.constant 0 : index
    %c1_141 = arith.constant 1 : index
    scf.for %arg0 = %c0_140 to %c1_133 step %c1_141 {
      memref.store %c0_139, %alloc_138[%arg0] : memref<?xindex>
    }
    %64 = bufferization.to_tensor %alloc_138 : memref<?xindex>
    %alloc_142 = memref.alloc(%c0_132) : memref<?xindex>
    %c0_143 = arith.constant 0 : index
    %c0_144 = arith.constant 0 : index
    %c1_145 = arith.constant 1 : index
    scf.for %arg0 = %c0_144 to %c0_132 step %c1_145 {
      memref.store %c0_143, %alloc_142[%arg0] : memref<?xindex>
    }
    %65 = bufferization.to_tensor %alloc_142 : memref<?xindex>
    %alloc_146 = memref.alloc(%c0_132) : memref<?xindex>
    %c0_147 = arith.constant 0 : index
    %c0_148 = arith.constant 0 : index
    %c1_149 = arith.constant 1 : index
    scf.for %arg0 = %c0_148 to %c0_132 step %c1_149 {
      memref.store %c0_147, %alloc_146[%arg0] : memref<?xindex>
    }
    %66 = bufferization.to_tensor %alloc_146 : memref<?xindex>
    %alloc_150 = memref.alloc(%61) : memref<?xindex>
    %c0_151 = arith.constant 0 : index
    %c0_152 = arith.constant 0 : index
    %c1_153 = arith.constant 1 : index
    scf.for %arg0 = %c0_152 to %61 step %c1_153 {
      memref.store %c0_151, %alloc_150[%arg0] : memref<?xindex>
    }
    %67 = bufferization.to_tensor %alloc_150 : memref<?xindex>
    %alloc_154 = memref.alloc(%62) : memref<?xindex>
    %c0_155 = arith.constant 0 : index
    %c0_156 = arith.constant 0 : index
    %c1_157 = arith.constant 1 : index
    scf.for %arg0 = %c0_156 to %62 step %c1_157 {
      memref.store %c0_155, %alloc_154[%arg0] : memref<?xindex>
    }
    %68 = bufferization.to_tensor %alloc_154 : memref<?xindex>
    %alloc_158 = memref.alloc(%c0_132) : memref<?xindex>
    %c0_159 = arith.constant 0 : index
    %c0_160 = arith.constant 0 : index
    %c1_161 = arith.constant 1 : index
    scf.for %arg0 = %c0_160 to %c0_132 step %c1_161 {
      memref.store %c0_159, %alloc_158[%arg0] : memref<?xindex>
    }
    %69 = bufferization.to_tensor %alloc_158 : memref<?xindex>
    %alloc_162 = memref.alloc(%c0_132) : memref<?xindex>
    %c0_163 = arith.constant 0 : index
    %c0_164 = arith.constant 0 : index
    %c1_165 = arith.constant 1 : index
    scf.for %arg0 = %c0_164 to %c0_132 step %c1_165 {
      memref.store %c0_163, %alloc_162[%arg0] : memref<?xindex>
    }
    %70 = bufferization.to_tensor %alloc_162 : memref<?xindex>
    %alloc_166 = memref.alloc(%62) : memref<?xf64>
    %cst_167 = arith.constant 0.000000e+00 : f64
    %c0_168 = arith.constant 0 : index
    %c1_169 = arith.constant 1 : index
    scf.for %arg0 = %c0_168 to %62 step %c1_169 {
      memref.store %cst_167, %alloc_166[%arg0] : memref<?xf64>
    }
    %71 = bufferization.to_tensor %alloc_166 : memref<?xf64>
    %alloc_170 = memref.alloc() : memref<1xindex>
    memref.store %c1_133, %alloc_170[%c0_132] : memref<1xindex>
    %72 = memref.load %alloc_170[%c0_132] : memref<1xindex>
    %alloc_171 = memref.alloc() : memref<1xindex>
    memref.store %c1_133, %alloc_171[%c0_132] : memref<1xindex>
    %73 = memref.load %alloc_171[%c0_132] : memref<1xindex>
    %alloc_172 = memref.alloc() : memref<1xindex>
    memref.store %c1_133, %alloc_172[%c0_132] : memref<1xindex>
    %74 = memref.load %alloc_172[%c0_132] : memref<1xindex>
    %alloc_173 = memref.alloc() : memref<1xindex>
    memref.store %c0_132, %alloc_173[%c0_132] : memref<1xindex>
    %75 = memref.load %alloc_173[%c0_132] : memref<1xindex>
    %alloc_174 = memref.alloc() : memref<1xindex>
    memref.store %c1_133, %alloc_174[%c0_132] : memref<1xindex>
    %76 = memref.load %alloc_174[%c0_132] : memref<1xindex>
    %alloc_175 = memref.alloc() : memref<1xindex>
    memref.store %c0_132, %alloc_175[%c0_132] : memref<1xindex>
    %77 = memref.load %alloc_175[%c0_132] : memref<1xindex>
    %alloc_176 = memref.alloc() : memref<1xindex>
    memref.store %c0_132, %alloc_176[%c0_132] : memref<1xindex>
    %78 = memref.load %alloc_176[%c0_132] : memref<1xindex>
    %alloc_177 = memref.alloc() : memref<1xindex>
    memref.store %c1_133, %alloc_177[%c0_132] : memref<1xindex>
    %79 = memref.load %alloc_177[%c0_132] : memref<1xindex>
    %alloc_178 = memref.alloc() : memref<1xindex>
    memref.store %c0_132, %alloc_178[%c0_132] : memref<1xindex>
    %80 = memref.load %alloc_178[%c0_132] : memref<1xindex>
    memref.store %12, %alloc_134[%c0_132] : memref<?xindex>
    %81 = ta.spTensor_construct(%63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %12, %36) {tensor_rank = 2 : i32} : (tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index) -> (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>)
    %82 = "it.ComputeLHS"(%81) <{allFormats = [["D", "CU"]], allPerms = [[0, 2]]}> : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>) -> tensor<*xf64>
    %83 = "it.Compute"(%60, %82) <{MaskType = "none", comp_worksp_opt = true, semiring = "plusxy_times"}> : (tensor<*xf64>, tensor<*xf64>) -> i64
    %84 = "it.Indices"(%59) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %85 = "it.Indices"(%83) <{indices = [2], iterator_type = "default"}> : (i64) -> i64
    %86 = "it.Indices"(%84) <{indices = [1], iterator_type = "default"}> : (i64) -> i64
    %87 = "it.Indices"(%56, %86, %85) <{indices = [0], iterator_type = "default"}> : (i64, i64, i64) -> i64
    %c0_179 = arith.constant 0 : index
    %c1_180 = arith.constant 1 : index
    %c0_181 = arith.constant 0 : index
    %88 = memref.load %alloc_4[%c0_181] : memref<?xindex>
    scf.for %arg0 = %c0_179 to %88 step %c1_180 {
      %c0_185 = arith.constant 0 : index
      %c0_186 = arith.constant 0 : index
      memref.store %c0_131, %alloc_130[%c0_186] : memref<1xindex>
      %c1_187 = arith.constant 1 : index
      %92 = arith.addi %arg0, %c1_187 : index
      %93 = memref.load %alloc_24[%arg0] : memref<?xindex>
      %94 = memref.load %alloc_24[%92] : memref<?xindex>
      %c1_188 = arith.constant 1 : index
      scf.for %arg1 = %93 to %94 step %c1_188 {
        %95 = memref.load %alloc_29[%arg1] : memref<?xindex>
        %c1_189 = arith.constant 1 : index
        %96 = arith.addi %95, %c1_189 : index
        %97 = memref.load %alloc_92[%95] : memref<?xindex>
        %98 = memref.load %alloc_92[%96] : memref<?xindex>
        %c1_190 = arith.constant 1 : index
        scf.for %arg2 = %97 to %98 step %c1_190 {
          %99 = memref.load %alloc_97[%arg2] : memref<?xindex>
        }
      }
    }
    %c0_182 = arith.constant 0 : index
    %c1_183 = arith.constant 1 : index
    %c0_184 = arith.constant 0 : index
    %89 = memref.load %alloc_4[%c0_184] : memref<?xindex>
    scf.for %arg0 = %c0_182 to %89 step %c1_183 {
      %c0_185 = arith.constant 0 : index
      %92 = memref.load %alloc_150[%arg0] : memref<?xindex>
      %c0_186 = arith.constant 0 : index
      memref.store %92, %alloc_130[%c0_186] : memref<1xindex>
      %c1_187 = arith.constant 1 : index
      %93 = arith.addi %arg0, %c1_187 : index
      %94 = memref.load %alloc_24[%arg0] : memref<?xindex>
      %95 = memref.load %alloc_24[%93] : memref<?xindex>
      %c1_188 = arith.constant 1 : index
      scf.for %arg1 = %94 to %95 step %c1_188 {
        %96 = memref.load %alloc_29[%arg1] : memref<?xindex>
        %c1_189 = arith.constant 1 : index
        %97 = arith.addi %96, %c1_189 : index
        %98 = memref.load %alloc_92[%96] : memref<?xindex>
        %99 = memref.load %alloc_92[%97] : memref<?xindex>
        %c1_190 = arith.constant 1 : index
        scf.for %arg2 = %98 to %99 step %c1_190 {
          %100 = memref.load %alloc_97[%arg2] : memref<?xindex>
        }
      }
    }
    %90 = "it.itree"(%87) : (i64) -> i64
    %91 = "ta.getTime"() : () -> f64
    "ta.print_elapsed_time"(%49, %91) : (f64, f64) -> ()
    "ta.print"(%81) : (!ta.spTensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>) -> ()
    return
  }
  func.func private @read_input_2D_f64(i32, index, index, index, index, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xindex>, memref<*xf64>, i32)
  func.func private @read_input_sizes_2D_f64(i32, index, index, index, index, memref<*xindex>, i32)
  func.func private @comet_sort_index(memref<*xindex>, index, index)
}