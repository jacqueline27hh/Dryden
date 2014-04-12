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
public partial class doctorsDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertdoctor(doctor instance);
  partial void Updatedoctor(doctor instance);
  partial void Deletedoctor(doctor instance);
  #endregion
	
	public doctorsDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public doctorsDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public doctorsDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public doctorsDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public doctorsDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<doctor> doctors
	{
		get
		{
			return this.GetTable<doctor>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.doctors")]
public partial class doctor : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _firstname;
	
	private string _lastname;
	
	private string _username;
	
	private string _passwd;
	
	private int _phone;
	
	private string _email;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnfirstnameChanging(string value);
    partial void OnfirstnameChanged();
    partial void OnlastnameChanging(string value);
    partial void OnlastnameChanged();
    partial void OnusernameChanging(string value);
    partial void OnusernameChanged();
    partial void OnpasswdChanging(string value);
    partial void OnpasswdChanged();
    partial void OnphoneChanging(int value);
    partial void OnphoneChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    #endregion
	
	public doctor()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_firstname", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string firstname
	{
		get
		{
			return this._firstname;
		}
		set
		{
			if ((this._firstname != value))
			{
				this.OnfirstnameChanging(value);
				this.SendPropertyChanging();
				this._firstname = value;
				this.SendPropertyChanged("firstname");
				this.OnfirstnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lastname", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string lastname
	{
		get
		{
			return this._lastname;
		}
		set
		{
			if ((this._lastname != value))
			{
				this.OnlastnameChanging(value);
				this.SendPropertyChanging();
				this._lastname = value;
				this.SendPropertyChanged("lastname");
				this.OnlastnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_username", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string username
	{
		get
		{
			return this._username;
		}
		set
		{
			if ((this._username != value))
			{
				this.OnusernameChanging(value);
				this.SendPropertyChanging();
				this._username = value;
				this.SendPropertyChanged("username");
				this.OnusernameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_passwd", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string passwd
	{
		get
		{
			return this._passwd;
		}
		set
		{
			if ((this._passwd != value))
			{
				this.OnpasswdChanging(value);
				this.SendPropertyChanging();
				this._passwd = value;
				this.SendPropertyChanged("passwd");
				this.OnpasswdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_phone", DbType="Int NOT NULL")]
	public int phone
	{
		get
		{
			return this._phone;
		}
		set
		{
			if ((this._phone != value))
			{
				this.OnphoneChanging(value);
				this.SendPropertyChanging();
				this._phone = value;
				this.SendPropertyChanged("phone");
				this.OnphoneChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string email
	{
		get
		{
			return this._email;
		}
		set
		{
			if ((this._email != value))
			{
				this.OnemailChanging(value);
				this.SendPropertyChanging();
				this._email = value;
				this.SendPropertyChanged("email");
				this.OnemailChanged();
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
