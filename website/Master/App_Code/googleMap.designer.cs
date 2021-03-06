﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34011
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
public partial class googleMapDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertgoogle_map(google_map instance);
  partial void Updategoogle_map(google_map instance);
  partial void Deletegoogle_map(google_map instance);
  #endregion
	
	public googleMapDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public googleMapDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public googleMapDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public googleMapDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public googleMapDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<google_map> google_maps
	{
		get
		{
			return this.GetTable<google_map>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.google_map")]
public partial class google_map : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private System.Nullable<bool> _enabled;
	
	private string _lat;
	
	private string _lng;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnenabledChanging(System.Nullable<bool> value);
    partial void OnenabledChanged();
    partial void OnlatChanging(string value);
    partial void OnlatChanged();
    partial void OnlngChanging(string value);
    partial void OnlngChanged();
    #endregion
	
	public google_map()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_enabled", DbType="Bit")]
	public System.Nullable<bool> enabled
	{
		get
		{
			return this._enabled;
		}
		set
		{
			if ((this._enabled != value))
			{
				this.OnenabledChanging(value);
				this.SendPropertyChanging();
				this._enabled = value;
				this.SendPropertyChanged("enabled");
				this.OnenabledChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lat", DbType="VarChar(20)")]
	public string lat
	{
		get
		{
			return this._lat;
		}
		set
		{
			if ((this._lat != value))
			{
				this.OnlatChanging(value);
				this.SendPropertyChanging();
				this._lat = value;
				this.SendPropertyChanged("lat");
				this.OnlatChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lng", DbType="VarChar(20)")]
	public string lng
	{
		get
		{
			return this._lng;
		}
		set
		{
			if ((this._lng != value))
			{
				this.OnlngChanging(value);
				this.SendPropertyChanging();
				this._lng = value;
				this.SendPropertyChanged("lng");
				this.OnlngChanged();
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
