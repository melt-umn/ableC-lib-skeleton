grammar edu:umn:cs:melt:exts:ableC:libskeleton:abstractsyntax;

imports edu:umn:cs:melt:ableC:abstractsyntax:host;


abstract production skeleton
s::Stmt ::=
{
  attachNote extensionGenerated("ableC-lib-skeleton");
  forwards to
    exprStmt(
      directCallExpr(
        name("puts"),
        consExpr(
          directCallExpr(
            name("getSkeletonString"),
            nilExpr()),
          nilExpr())));
}
