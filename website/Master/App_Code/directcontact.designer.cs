﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
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
public partial class directcontactDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertdirect_contact(direct_contact instance);
  partial void Updatedirect_contact(direct_contact instance);
  partial void Deletedirect_contact(direct_contact instance);
  #endregion
	
	public directcontactDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public directcontactDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public directcontactDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public directcontactDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public directcontactDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<direct_contact> direct_contacts
	{
		get
		{
			return this.GetTable<direct_contact>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.direct_contact")]
public partial class direct_contact : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _firstname;
	
	private string _lastname;
	
	private string _department;
	
	private string _email;
	
	private string _message;
	
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
    partial void OndepartmentChanging(string value);
    partial void OndepartmentChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OnmessageChanging(string value);
    partial void OnmessageChanged();
    #endregion
	
	public direct_contact()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_department", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string department
	{
		get
		{
			return this._department;
		}
		set
		{
			if ((this._department != value))
			{
				this.OndepartmentChanging(value);
				this.SendPropertyChanging();
				this._department = value;
				this.SendPropertyChanged("department");
				this.OndepartmentChanged();
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_message", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string message
	{
		get
		{
			return this._message;
		}
		set
		{
			if ((this._message != value))
			{
				this.OnmessageChanging(value);
				this.SendPropertyChanging();
				this._message = value;
				this.SendPropertyChanged("message");
				this.OnmessageChanged();
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
