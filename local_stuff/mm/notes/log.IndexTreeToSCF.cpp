/// lib/Conversion/IndexTreeToSCF/IndexTreeToSCF.cpp

void LowerIndexTreeToSCFPass::doLoweringIndexTreeToSCF(indexTree::IndexTreeOp &rootOp,
                                                       OpBuilder &builder)
{
      genForOps(tensors, ids, formats, rootOp, builder, opstree_vec[i], symbolicInfo);

}

  void genForOps(std::vector<Value> &tensors,
                 std::vector<unsigned int> &ids,
                 std::vector<std::string> &formats,
                 indexTree::IndexTreeOp rootOp,
                 OpBuilder &builder,
                 OpsTree *opstree,
                 SymbolicInfo &symbolicInfo)
{
    for (unsigned int i = 0; i < tensors.size(); i++)
    {
      if (format.compare(0, 1, "D") == 0)
      {
        genForOpFormat_D(builder,
                         loc,
                         tensor,
                         id,
                         i,
                         allAllocs,
                         forLoop /* output */,
                         accessIndex /* output */);
      }
      else if (format.compare(0, 2, "CU") == 0)
      {
          genForOpFormat_CU(builder,
                            loc,
                            opstree,
                            tensor,
                            id,
                            i,
                            allAllocs,
                            parent_forop,
                            parent_accessIdx,
                            forLoop /* output */,
                            accessIndex /* output */);
      }
      else if (format.compare(0, 2, "CN") == 0)
      {
        genForOpFormat_CN(builder,
                          loc,
                          tensor,
                          id,
                          i,
                          allAllocs,
                          forLoop /* output */,
                          accessIndex /* output */);
      }
      else if (format.compare(0, 1, "S") == 0)
      {
        genForOpFormat_S(builder,
                         loc,
                         opstree,
                         tensor,
                         id,
                         i,
                         allAllocs,
                         opstree_forops,
                         parent_forop,
                         forLoop /* output */,
                         accessIndex /* output */);
      }
    }
}