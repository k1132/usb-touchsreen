/********************************** (C) COPYRIGHT *******************************
* File Name          : IIC.C
* Author             : RZ
* Version            : V1.00
* Date               : 2017-5-15
* Description        : Interface of I2C
*******************************************************************************/#include <intrins.h>
#include <stdio.h>
#include "CH554.H"
#include "DEBUG.H"

#define 	DEBUG_IIC		(0)
/* ����Ӳ�����߶��� */
sbit  IIC_SCL=P1^4;                       		/*ģ��I2Cʱ�ӿ���λ*/
sbit  IIC_SDA=P1^5;                      	 	/*ģ��I2C���ݴ���λ*/



/* ��,���������� */                                            
bit  bACK;	                   					/*Ӧ���־λ*/
bit	 iic_speed_control = 1;       				 	/*IIC�ٶȿ���λ*/

/*��ʱ�ӳ���*/
/*��ʱָ��΢��ʱ��*/          				 	/* ����Ƶ��<24MHZ) */  
#define		DELAY5uS()		mDelayuS(5)    		/* �ʵ�������ʱ���ı�IIC�ٶ� */
#define		DELAY2uS()		mDelayuS(2)			/* 400K */ 
#define 	IIC_READ		(0X01)
#define 	IIC_WRITE		(0X00)
/*100K DELAY5 ����_nop_();��20��*/
/*100K DELAY2 ����_nop_();��10��*/


/*******************************����ΪIIC�������������Ӻ���*********************************************************************/

/*******************************************************************************
* Function Name  : IIC_Start
* Description    :
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************************************************************/
void IIC_Start( void )
{
	IIC_SDA=1;	  	  
	IIC_SCL=1;
	mDelayuS(30);
 	IIC_SDA=0;//START:when CLK is high,DATA change form high to low 
	DELAY5uS();
	IIC_SCL=0;//ǯסI2C���ߣ�׼�����ͻ�������� 
}

/*******************************************************************************
* Function Name  : IIC_Stop
* Description    :
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void IIC_Stop( void )
{
	IIC_SCL=1;
	mDelayuS(5);
	IIC_SDA=0;//STOP:when CLK is high DATA change form low to high
	DELAY5uS();
	IIC_SDA=1;//����I2C���߽����ź�  
}

/*******************************************************************************
* Function Name  : Ack_I2c
* Description    :
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void IIC_Ack( void )
{
	IIC_SCL=0;
	DELAY5uS();
	IIC_SDA=0;
	DELAY5uS();
	IIC_SCL=1;
	DELAY5uS();
	IIC_SCL=0;
	IIC_SDA=1;	
}

/*******************************************************************************
* Function Name  : Nack_I2c
* Description    :
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void IIC_Nack(void)
{
	IIC_SCL=0;
	DELAY5uS();
	IIC_SDA=1;
	DELAY5uS();
	IIC_SCL=1;
	DELAY5uS();
	IIC_SCL=0;
}			
/*******************************************************************************
* Function Name  : Ack_I2c
* Description    :�ȴ�Ӧ���źŵ���
				  ����ֵ��1������Ӧ��ʧ��
					      0������Ӧ��ɹ�
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
UINT8 IIC_Wait_Ack(void)
{
	UINT8 ucErrTime=0;
	IIC_SDA=1;	   
	IIC_SCL=1;
	DELAY5uS();
	while(IIC_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			IIC_Stop();
			return 1;
		}
		mDelayuS(1);
	}
	IIC_SCL=0;//ʱ�����0 	   
	return 0;  
} 
/*******************************************************************************
* Function Name  : IIC_Send_Byte
* Description    :
* Input          : UINT8 c
* Output         : None
* Return         : None
*******************************************************************************/
void  IIC_Send_Byte(UINT8 txd)
{
    UINT8 t;   
    IIC_SCL=0;//����ʱ�ӿ�ʼ���ݴ���
	DELAY5uS();
	for(t=0;t<8;t++)
    {              
        IIC_SDA=(txd&0x80)>>7;
        txd<<=1; 	      
		IIC_SCL=1; 
		DELAY5uS();
		IIC_SCL=0;	
		DELAY5uS();
    }	 
    
}

/*******************************************************************************
* Function Name  : IIC_Read_Byte
* Description    :
* Input          : None
* Output         : None
* Return         : UINT8
*******************************************************************************/
UINT8  IIC_Read_Byte(UINT8 ack)
{
	UINT8 i,receive=0;
	mDelayuS(30);
	for(i=0;i<8;i++ )
	{ 
		IIC_SCL=0; 	    	   
		DELAY5uS();
		IIC_SCL=1;	 
		receive<<=1;
		if(IIC_SDA)
			receive++;   
	}
	if (!ack)
		IIC_Nack();//����nACK
	else 
		IIC_Ack(); //����ACK   
 	return receive;
}