using HZY.Repository.Entity;
using System.Collections.Generic;

namespace HZY.Admin.Model
{
    public class CodeGenerationModel
    {
        public CodeGenerationModel(string tableName, string @namespace, List<AppTableInfo> appTableInfos)
        {
            this.TableName = tableName;
            this.Namespace = @namespace;
            this.AppTableInfos = appTableInfos;
        }

        public string TableName { get; set; }

        public List<AppTableInfo> AppTableInfos { get; set; }

        public string Namespace { get; set; }
    }

}