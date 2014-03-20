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
public partial class volunteerclassDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertvolunteer(volunteer instance);
  partial void Updatevolunteer(volunteer instance);
  partial void Deletevolunteer(volunteer instance);
  #endregion
	
	public volunteerclassDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public volunteerclassDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public volunteerclassDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public volunteerclassDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public volunteerclassDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<volunteer> volunteers
	{
		get
		{
			return this.GetTable<volunteer>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.volunteer")]
public partial class volunteer : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private string _firstname;
	
	private string _lastname;
	
	private int _age;
	
	private string _gender;
	
	private string _school_name;
	
	private string _volunteer_type;
	
	private string _email;
	
	private int _phone;
	
	private string _available_days;
	
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
    partial void OnageChanging(int value);
    partial void OnageChanged();
    partial void OngenderChanging(string value);
    partial void OngenderChanged();
    partial void Onschool_nameChanging(string value);
    partial void Onschool_nameChanged();
    partial void Onvolunteer_typeChanging(string value);
    partial void Onvolunteer_typeChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OnphoneChanging(int value);
    partial void OnphoneChanged();
    partial void Onavailable_daysChanging(string value);
    partial void Onavailable_daysChanged();
    #endregion
	
	public volunteer()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_age", DbType="Int NOT NULL")]
	public int age
	{
		get
		{
			return this._age;
		}
		set
		{
			if ((this._age != value))
			{
				this.OnageChanging(value);
				this.SendPropertyChanging();
				this._age = value;
				this.SendPropertyChanged("age");
				this.OnageChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_gender", DbType="NChar(10) NOT NULL", CanBeNull=false)]
	public string gender
	{
		get
		{
			return this._gender;
		}
		set
		{
			if ((this._gender != value))
			{
				this.OngenderChanging(value);
				this.SendPropertyChanging();
				this._gender = value;
				this.SendPropertyChanged("gender");
				this.OngenderChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_school_name", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string school_name
	{
		get
		{
			return this._school_name;
		}
		set
		{
			if ((this._school_name != value))
			{
				this.Onschool_nameChanging(value);
				this.SendPropertyChanging();
				this._school_name = value;
				this.SendPropertyChanged("school_name");
				this.Onschool_nameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_volunteer_type", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string volunteer_type
	{
		get
		{
			return this._volunteer_type;
		}
		set
		{
			if ((this._volunteer_type != value))
			{
				this.Onvolunteer_typeChanging(value);
				this.SendPropertyChanging();
				this._volunteer_type = value;
				this.SendPropertyChanged("volunteer_type");
				this.Onvolunteer_typeChanged();
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_available_days", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
	public string available_days
	{
		get
		{
			return this._available_days;
		}
		set
		{
			if ((this._available_days != value))
			{
				this.Onavailable_daysChanging(value);
				this.SendPropertyChanging();
				this._available_days = value;
				this.SendPropertyChanged("available_days");
				this.Onavailable_daysChanged();
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
