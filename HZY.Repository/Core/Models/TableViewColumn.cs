namespace HZY.Repository.Core.Models
{
    /// <summary>
    /// 列头信息
    /// </summary>
    public class TableViewColumnHead
    {
        public TableViewColumnHead(string fieldName, string title)
        {
            this.FieldName = fieldName;
            this.Title = title;
            if (fieldName.ToLower() == "Id".ToLower())
            {
                this.Show = false;
            }
            else
            {
                this.Show = !fieldName.StartsWith("_");
            }
        }

        public TableViewColumnHead(string fieldName, string title, bool show)
        {
            this.FieldName = fieldName;
            this.Title = title;
            this.Show = show;
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
    }
}