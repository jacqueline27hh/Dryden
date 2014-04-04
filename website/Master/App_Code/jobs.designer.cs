﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18063
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="dryden_database")]
public partial class jobsDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertjob(job instance);
  partial void Updatejob(job instance);
  partial void Deletejob(job instance);
  #endregion
	
	public jobsDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public jobsDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public jobsDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public jobsDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public jobsDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<job> jobs
	{
		get
		{
			return this.GetTable<job>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.jobs")]
public partial class job : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _title;
	
	private string _description;
	
	private System.DateTime _last_date_apply;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OntitleChanging(string value);
    partial void OntitleChanged();
    partial void OndescriptionChanging(string value);
    partial void OndescriptionChanged();
    partial void Onlast_date_applyChanging(System.DateTime value);
    partial void Onlast_date_applyChanged();
    #endregion
	
	public job()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_title", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string title
	{
		get
		{
			return this._title;
		}
		set
		{
			if ((this._title != value))
			{
				this.OntitleChanging(value);
				this.SendPropertyChanging();
				this._title = value;
				this.SendPropertyChanged("title");
				this.OntitleChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_description", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string description
	{
		get
		{
			return this._description;
		}
		set
		{
			if ((this._description != value))
			{
				this.OndescriptionChanging(value);
				this.SendPropertyChanging();
				this._description = value;
				this.SendPropertyChanged("description");
				this.OndescriptionChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_last_date_apply", DbType="Date NOT NULL")]
	public System.DateTime last_date_apply
	{
		get
		{
			return this._last_date_apply;
		}
		set
		{
			if ((this._last_date_apply != value))
			{
				this.Onlast_date_applyChanging(value);
				this.SendPropertyChanging();
				this._last_date_apply = value;
				this.SendPropertyChanged("last_date_apply");
				this.Onlast_date_applyChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591