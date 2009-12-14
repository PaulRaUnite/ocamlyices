#include <gmp.h>
#include <yices_c.h>

#define expr yices_expr
#define typ yices_type
#define var_decl yices_var_decl
#define context yices_context
#define model yices_model
#define var_decl_iterator yices_var_decl_iterator

#define True l_true
#define False l_false
#define Undef l_undef

#define value_error int
#define ptyp yices_type*

struct unsat_core {
  int length;
  assertion_id* array;
};

struct unsat_core get_unsat_core(yices_context ctx);
char* get_rational_value_as_string(model m, var_decl d);
char* get_integer_value_as_string(model m, var_decl d);

#define check_value_error(e) if (!e) failwith("error: cannot get a value")

#define CHECKNOTNULL(p,m) if (p == 0) failwith("error :" m)

#define check_expr(e) CHECKNOTNULL(e,"returns null expression")
#define check_type(e) CHECKNOTNULL(e,"returns null type")
#define check_var_decl(e) CHECKNOTNULL(e,"returns null variable declaration")
#define check_context(e) CHECKNOTNULL(e,"returns null context")
#define check_model(e) CHECKNOTNULL(e,"returns null model")
#define check_var_decl_iterator(e) CHECKNOTNULL(e,"returns null iterator")



