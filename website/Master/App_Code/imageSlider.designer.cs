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
public partial class imageSliderDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertImageslider(Imageslider instance);
  partial void UpdateImageslider(Imageslider instance);
  partial void DeleteImageslider(Imageslider instance);
  #endregion
	
	public imageSliderDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public imageSliderDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public imageSliderDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public imageSliderDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public imageSliderDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Imageslider> Imagesliders
	{
		get
		{
			return this.GetTable<Imageslider>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Imageslider")]
public partial class Imageslider : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _imageurl1;
	
	private string _imageurl2;
	
	private string _imageurl3;
	
	private string _caption1;
	
	private string _caption2;
	
	private string _caption3;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void Onimageurl1Changing(string value);
    partial void Onimageurl1Changed();
    partial void Onimageurl2Changing(string value);
    partial void Onimageurl2Changed();
    partial void Onimageurl3Changing(string value);
    partial void Onimageurl3Changed();
    partial void Oncaption1Changing(string value);
    partial void Oncaption1Changed();
    partial void Oncaption2Changing(string value);
    partial void Oncaption2Changed();
    partial void Oncaption3Changing(string value);
    partial void Oncaption3Changed();
    #endregion
	
	public Imageslider()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_imageurl1", DbType="VarChar(100)")]
	public string imageurl1
	{
		get
		{
			return this._imageurl1;
		}
		set
		{
			if ((this._imageurl1 != value))
			{
				this.Onimageurl1Changing(value);
				this.SendPropertyChanging();
				this._imageurl1 = value;
				this.SendPropertyChanged("imageurl1");
				this.Onimageurl1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_imageurl2", DbType="VarChar(100)")]
	public string imageurl2
	{
		get
		{
			return this._imageurl2;
		}
		set
		{
			if ((this._imageurl2 != value))
			{
				this.Onimageurl2Changing(value);
				this.SendPropertyChanging();
				this._imageurl2 = value;
				this.SendPropertyChanged("imageurl2");
				this.Onimageurl2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_imageurl3", DbType="VarChar(100)")]
	public string imageurl3
	{
		get
		{
			return this._imageurl3;
		}
		set
		{
			if ((this._imageurl3 != value))
			{
				this.Onimageurl3Changing(value);
				this.SendPropertyChanging();
				this._imageurl3 = value;
				this.SendPropertyChanged("imageurl3");
				this.Onimageurl3Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_caption1", DbType="VarChar(200)")]
	public string caption1
	{
		get
		{
			return this._caption1;
		}
		set
		{
			if ((this._caption1 != value))
			{
				this.Oncaption1Changing(value);
				this.SendPropertyChanging();
				this._caption1 = value;
				this.SendPropertyChanged("caption1");
				this.Oncaption1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_caption2", DbType="VarChar(200)")]
	public string caption2
	{
		get
		{
			return this._caption2;
		}
		set
		{
			if ((this._caption2 != value))
			{
				this.Oncaption2Changing(value);
				this.SendPropertyChanging();
				this._caption2 = value;
				this.SendPropertyChanged("caption2");
				this.Oncaption2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_caption3", DbType="VarChar(200)")]
	public string caption3
	{
		get
		{
			return this._caption3;
		}
		set
		{
			if ((this._caption3 != value))
			{
				this.Oncaption3Changing(value);
				this.SendPropertyChanging();
				this._caption3 = value;
				this.SendPropertyChanged("caption3");
				this.Oncaption3Changed();
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