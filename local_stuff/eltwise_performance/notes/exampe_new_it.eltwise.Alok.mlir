%43 = "it.itree"() ({
    %44 = "it.RootOp"() : () -> !it.index_tree
    %45 = "it.DenseDomainOp"(%9) : (index) -> !it.domain
    %46 = "it.IndexOp"(%44, %45) : (!it.index_tree, !it.domain) -> !it.index
    %crd, %pos = "it.IndexToTensorDim"(%41, %46) {dim = 0 : ui32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, !it.index) -> (index, index)
    %47 = "it.SparseDomainOp"(%41, %36, %37, %25, %26, %pos) {dim = 1 : ui32, format = 2 : i32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?xindex>, tensor<?xindex>, index, index, index) -> !it.domain
    %crd_39, %pos_40 = "it.IndexToTensorDim"(%20, %46) {dim = 0 : ui32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, !it.index) -> (index, index)
    %48 = "it.SparseDomainOp"(%20, %15, %16, %4, %5, %pos_40) {dim = 1 : ui32, format = 2 : i32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, tensor<?xindex>, tensor<?xindex>, index, index, index) -> !it.domain
    %49 = "it.DomainIntersectionOp"(%48, %47) : (!it.domain, !it.domain) -> !it.domain
    %50 = "it.IndexOp"(%46, %49) : (!it.index, !it.domain) -> !it.index
    %crd_41, %pos_42 = "it.IndexToTensorDim"(%42, %46) {dim = 0 : ui32} : (tensor<?x?xf64>, !it.index) -> (index, index)
    %crd_43, %pos_44 = "it.IndexToTensorDim"(%42, %50, %pos_42) {dim = 1 : ui32} : (tensor<?x?xf64>, !it.index, index) -> (index, index)
    %51 = "it.LHSOperandOp"(%42, %pos_42, %pos_44, %crd_41, %crd_43) : (tensor<?x?xf64>, index, index, index, index) -> !it.operand
    %crd_45, %pos_46 = "it.IndexToTensorDim"(%20, %50, %pos_40) {dim = 1 : ui32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, !it.index, index) -> (index, index)
    %52 = "it.OperandOp"(%20, %pos_40, %pos_46, %crd_39, %crd_45) : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index, index, index, index) -> !it.operand
    %crd_47, %pos_48 = "it.IndexToTensorDim"(%41, %50, %pos) {dim = 1 : ui32} : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, !it.index, index) -> (index, index)
    %53 = "it.OperandOp"(%41, %pos, %pos_48, %crd, %crd_47) : (!ta.sptensor<tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xindex>, tensor<?xf64>, index, index, index, index, index, index, index, index, index, index, index>, index, index, index, index) -> !it.operand
    %54 = "it.ComputeOp"(%50, %51, %52, %53) {comp_worksp_opt = false, semiring = "noop_times"} : (!it.index, !it.operand, !it.operand, !it.operand) -> tensor<?x?xf64>
    it.yield %54 : tensor<?x?xf64>
  }) : () -> tensor<?x?xf64>