using System.Linq.Expressions;
using HzyScanDiService;
using Microsoft.Extensions.DependencyInjection;
using HZY.EFCore.CacheEntity;
using System;
using HZY.Infrastructure;
using System.Linq;

namespace HZY.EFCore.PagingViews;

/// <summary>
/// 列头信息 导出 excel 需要
/// </summary>
public class TableColumnView
{
    public TableColumnView(string fieldName, string title)
    {
        FieldName = fieldName;
        Title = title;
        if (fieldName.ToLower() == "Id".ToLower())
        {
            Show = false;
        }
        else
        {
            Show = !fieldName.StartsWith("_");
        }
    }

    public TableColumnView(string fieldName, string title, int width)
    {
        FieldName = fieldName;
        Title = title;
        if (fieldName.ToLower() == "Id".ToLower())
        {
            Show = false;
        }
        else
        {
            Show = !fieldName.StartsWith("_");
        }

        Width = width.ToString();
    }

    public TableColumnView(string fieldName, string title, bool show, int width)
    {
        FieldName = fieldName;
        Title = title;
        Show = show;
        Width = width.ToString();
    }

    /// <summary>
    /// 字段名称
    /// </summary>
    public string FieldName { get; set; }

    /// <summary>
    /// 标题名称
    /// </summary>
    public string Title { get; set; }

    /// <summary>
    /// 是否显示
    /// </summary>
    public bool Show { get; set; } = true;

    /// <summary>
    /// 列宽度
    /// </summary>
    public string Width { get; set; } = string.Empty;

    /// <summary>
    /// 映射字段
    /// </summary>
    /// <param name="title"></param>
    /// <param name="show"></param>
    /// <param name="width"></param>
    public void Mapping(string title, bool? show = null, string width = null)
    {
        if (!string.IsNullOrWhiteSpace(title)) Title = title;
        if (show != null) Show = show.Value;
        if (!string.IsNullOrWhiteSpace(width)) Width = width;
    }

    /// <summary>
    ///  映射字段 用于映射字段设置显示名称
    /// </summary>
    /// <param name="field"></param>
    /// <param name="show"></param>
    /// <param name="width"></param>
    /// <typeparam name="T"></typeparam>
    public void Mapping<T>(Expression<Func<T, object>> field = null, bool? show = null, string width = null)
    {
        //自动获取名称对应的显示名
        var type = typeof(T);
        var name = Tools.GetNameByExpression(field);
        using var scope = IOCUtil.CreateScope();
        var _cacheEntity = scope.ServiceProvider.GetService<ICacheEntity>();
        var entityInfos = _cacheEntity.GetEntityInfos(type.Name);
        var tableInfo = entityInfos?
        .Where(w => w.Name.ToLower() == name.ToLower())
        .FirstOrDefault();
        this.Mapping(tableInfo?.Remark, show, width);
    }

}