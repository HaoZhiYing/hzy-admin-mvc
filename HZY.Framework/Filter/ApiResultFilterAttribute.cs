using HZY.Framework.ApiResultManage;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace HZY.Framework.Filter
{
    /// <summary>
    /// Api 结果返回包装器
    /// </summary>
    public class ApiResultFilterAttribute : ActionFilterAttribute
    {
        /// <summary>
        /// 拦截 Action 前
        /// </summary>
        /// <param name="context"></param>
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);
        }

        /// <summary>
        /// 结果 返回前
        /// </summary>
        /// <param name="context"></param>
        public override void OnResultExecuting(ResultExecutingContext context)
        {
            base.OnResultExecuting(context);

            if (context.Result == null)
            {
                return;
            }

            var apiResultData = new ApiResultData();

            if (context.Result is ObjectResult)
            {
                var result = context.Result as ObjectResult;
                context.Result = new JsonResult(apiResultData.ResultOk("success", result.Value));
                return;
            }
            if (context.Result is EmptyResult)
            {
                context.Result = new JsonResult(apiResultData.ResultOk("success", null));
                return;
            }
            if (context.Result is ContentResult)
            {
                var result = context.Result as ContentResult;
                context.Result = new JsonResult(apiResultData.ResultOk("success", result.Content));
                return;
            }


        }


    }
}
