﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18052
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
public partial class appointmentsDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertAppointment(Appointment instance);
  partial void UpdateAppointment(Appointment instance);
  partial void DeleteAppointment(Appointment instance);
  #endregion
	
	public appointmentsDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dryden_databaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public appointmentsDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public appointmentsDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public appointmentsDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public appointmentsDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Appointment> Appointments
	{
		get
		{
			return this.GetTable<Appointment>();
		}
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_getPatientById")]
	public ISingleResult<sp_getPatientByIdResult> sp_getPatientById([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="UniqueIdentifier")] System.Nullable<System.Guid> pId)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), pId);
		return ((ISingleResult<sp_getPatientByIdResult>)(result.ReturnValue));
	}
	
	[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.sp_getDoctorById")]
	public ISingleResult<sp_getDoctorByIdResult> sp_getDoctorById([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="UniqueIdentifier")] System.Nullable<System.Guid> dId)
	{
		IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dId);
		return ((ISingleResult<sp_getDoctorByIdResult>)(result.ReturnValue));
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Appointments")]
public partial class Appointment : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _Id;
	
	private System.Guid _patient_id;
	
	private System.Guid _doctor_id;
	
	private System.DateTime _date_time;
	
	private string _appointment_title;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void Onpatient_idChanging(System.Guid value);
    partial void Onpatient_idChanged();
    partial void Ondoctor_idChanging(System.Guid value);
    partial void Ondoctor_idChanged();
    partial void Ondate_timeChanging(System.DateTime value);
    partial void Ondate_timeChanged();
    partial void Onappointment_titleChanging(string value);
    partial void Onappointment_titleChanged();
    #endregion
	
	public Appointment()
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
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_patient_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid patient_id
	{
		get
		{
			return this._patient_id;
		}
		set
		{
			if ((this._patient_id != value))
			{
				this.Onpatient_idChanging(value);
				this.SendPropertyChanging();
				this._patient_id = value;
				this.SendPropertyChanged("patient_id");
				this.Onpatient_idChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_doctor_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid doctor_id
	{
		get
		{
			return this._doctor_id;
		}
		set
		{
			if ((this._doctor_id != value))
			{
				this.Ondoctor_idChanging(value);
				this.SendPropertyChanging();
				this._doctor_id = value;
				this.SendPropertyChanged("doctor_id");
				this.Ondoctor_idChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[date-time]", Storage="_date_time", DbType="DateTime NOT NULL")]
	public System.DateTime date_time
	{
		get
		{
			return this._date_time;
		}
		set
		{
			if ((this._date_time != value))
			{
				this.Ondate_timeChanging(value);
				this.SendPropertyChanging();
				this._date_time = value;
				this.SendPropertyChanged("date_time");
				this.Ondate_timeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_appointment_title", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string appointment_title
	{
		get
		{
			return this._appointment_title;
		}
		set
		{
			if ((this._appointment_title != value))
			{
				this.Onappointment_titleChanging(value);
				this.SendPropertyChanging();
				this._appointment_title = value;
				this.SendPropertyChanged("appointment_title");
				this.Onappointment_titleChanged();
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

public partial class sp_getPatientByIdResult
{
	
	private string _patientName;
	
	private int _Id;
	
	private System.Guid _patient_id;
	
	private System.Guid _doctor_id;
	
	private System.DateTime _date_time;
	
	private string _appointment_title;
	
	public sp_getPatientByIdResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_patientName", DbType="VarChar(101) NOT NULL", CanBeNull=false)]
	public string patientName
	{
		get
		{
			return this._patientName;
		}
		set
		{
			if ((this._patientName != value))
			{
				this._patientName = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL")]
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
				this._Id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_patient_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid patient_id
	{
		get
		{
			return this._patient_id;
		}
		set
		{
			if ((this._patient_id != value))
			{
				this._patient_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_doctor_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid doctor_id
	{
		get
		{
			return this._doctor_id;
		}
		set
		{
			if ((this._doctor_id != value))
			{
				this._doctor_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[date-time]", Storage="_date_time", DbType="DateTime NOT NULL")]
	public System.DateTime date_time
	{
		get
		{
			return this._date_time;
		}
		set
		{
			if ((this._date_time != value))
			{
				this._date_time = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_appointment_title", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string appointment_title
	{
		get
		{
			return this._appointment_title;
		}
		set
		{
			if ((this._appointment_title != value))
			{
				this._appointment_title = value;
			}
		}
	}
}

public partial class sp_getDoctorByIdResult
{
	
	private string _doctorName;
	
	private int _Id;
	
	private System.Guid _patient_id;
	
	private System.Guid _doctor_id;
	
	private System.DateTime _date_time;
	
	private string _appointment_title;
	
	public sp_getDoctorByIdResult()
	{
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_doctorName", DbType="VarChar(101) NOT NULL", CanBeNull=false)]
	public string doctorName
	{
		get
		{
			return this._doctorName;
		}
		set
		{
			if ((this._doctorName != value))
			{
				this._doctorName = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL")]
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
				this._Id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_patient_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid patient_id
	{
		get
		{
			return this._patient_id;
		}
		set
		{
			if ((this._patient_id != value))
			{
				this._patient_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_doctor_id", DbType="UniqueIdentifier NOT NULL")]
	public System.Guid doctor_id
	{
		get
		{
			return this._doctor_id;
		}
		set
		{
			if ((this._doctor_id != value))
			{
				this._doctor_id = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[date-time]", Storage="_date_time", DbType="DateTime NOT NULL")]
	public System.DateTime date_time
	{
		get
		{
			return this._date_time;
		}
		set
		{
			if ((this._date_time != value))
			{
				this._date_time = value;
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_appointment_title", DbType="VarChar(MAX) NOT NULL", CanBeNull=false)]
	public string appointment_title
	{
		get
		{
			return this._appointment_title;
		}
		set
		{
			if ((this._appointment_title != value))
			{
				this._appointment_title = value;
			}
		}
	}
}
#pragma warning restore 1591
