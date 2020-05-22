#---------------------------------------------------------
export SNPSLMD_LICENSE_FILE=28000@192.168.222.231
export LM_LICENSE_FILE=28000@192.168.222.231:29000@192.168.222.230:29000@192.168.222.231:30000@192.168.222.230:30000@192.168.222.231


# lpddr4 enviroment added by ljm @2018.12.19
#controller license coreConsult

export COREBUILDER=/export/pfs/home/lte_soc/liujiaming/ip_work/lic_dir/cTool/coretools_vO-2018.09-SP2 

#export COREBUILDER=/export/pfs/edatools/synopsys/coreTools-2019.06/coretools/P-2019.06

#setenv COREBUILDER ./coretools_vO-2018.09-SP2 
#export LM_LICENSE_FILE=27000@node30
#export SNPSLMD_LICENSE_FILE=27000@node30

export path=$COREBUILDER/bin:$path
#export PATH=$COREBUILDER/bin:$PATH

#================================
#--------------------------------------
export CTB_HOME=/export/pfs/home/lte_soc/liujiaming/ip_work/lpddr4_phy/dwc_lpddr4_multiphy_v2_tsmc28hpcp18_2.50a/release/synopsys/dwc_lpddr4_multiphy_v2_tsmc28hpcp18/2.50a/ctb/A-2017.11/sim/..

export CTB_VIP_HOME=/export/pfs/home/lte_soc/liujiaming/ip_work/lpddr_vip_svt
export release=1
if [ $release == 1 ]; then
export CTB_FW_DIR=$CTB_HOME/../../firmware/Latest
export CTB_PHYINIT_DIR=$CTB_HOME/../../phyinit/Latest/software
fi

#---------------------------------------------------------
# Used for gatesim
#---------------------------------------------------------
export sdf_path=6M_1X_h_1Xa_v_1Ya_h_2Y_vh

  #export PERL5LIB=/usr/share/perl5/vendor_perl/CGI
#bootenv end
# lpddr4 enviroment added ended by ljm @2018.12.19



HOSTNAME=$(hostname) 

#export DISPLAY='localhost:10.0'
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib64:/usr/local/lib64:/usr/lib64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/bin




################################################################################################
#my Exports
################################################################################################
export SGE_ROOT=/gridware/sge
export PYTHON_ROOT=/export/qfs/lte/lte_veri/zhangxiuzhi/tools/python3/bin
export PATH=$PATH:/export/pfs/home/lte_veri/zhangxiuzhi/.local/lib/python2.7/site-packages/
export PATH=$PATH:/export/pfs/home/lte_veri/zhangxiuzhi/.local/lib/python2.7/site-packages/
export PATH=$PATH:/gridware/sge/bin/lx24-amd64
export PATH=$PATH:~/bin/
export PATH=$PATH:/usr/bin/
export PATH=$PATH:/lib64
export PATH=$PATH:/usr/lib64
#Installer 3.3
export PATH=$PATH:/export/pfs/home/lte_share/yinliang/dw_iip_DWC_pcie_dm_4.60a/SynopsysInstaller
# source /gridware/sge/default/common/settings.sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib64

# SNPSLMD_LICENSE_FILE supports tools based on the SCL snpslmd daemon,
# pointing to the SCL license servers.
export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE:28000@loginserver
export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE:27000@node30
export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE:28000@node28
export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE:28000@192.168.222.231
# LM_LICENSE_FILE supports tools based on legacy daemons.
export LM_LICENSE_FILE=$LM_LICENSE_FILE:27000@node30
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@loginserver:28000@node7:28000@node9:29000@loginserver:27000@suse:27000@node1:31000@loginserver:30000@loginserver:27000@10.107.0.61:
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node9:28000@node10:28000@node23:~/synopsys_node23.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node9:28000@node10
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@10.107.0.231:28000@10.107.0.232
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node8
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node6
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node23
export LM_LICENSE_FILE=$LM_LICENSE_FILE:27002@192.168.6.6:27007@192.168.6.4
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@node28
export LM_LICENSE_FILE=$LM_LICENSE_FILE:28000@192.168.222.231

export SNPS_LICENSE_FILE=28000@loginserver:29000@loginserver:27000@10.110.0.61:27000@suse:27000@10.107.0.241:28000@node23:28000@node10
export SNPS_LICENSE_FILE=29000@loginserver:27000@10.110.0.61:27000@suse:27000@10.107.0.241:28000@node23:28000@node10
export SNPS_LICENSE_FILE=$SNPS_LICENSE_FILE:28000@10.107.0.231:27002@192.168.6.6:27007@192.168.6.4:5280@192.168.6.3:28000@10.107.0.232
export SNPS_LICENSE_FILE=$SNPS_LICENSE_FILE:28000@node30
export SNPS_LICENSE_FILE=$SNPS_LICENSE_FILE:28000@node23
export SNPS_LICENSE_FILE=$SNPS_LICENSE_FILE:28000@node28
export SNPS_LICENSE_FILE=$SNPS_LICENSE_FILE:28000@192.168.222.231


export CDS_LICENSE_FILE=29000@loginserver
export CDS_LIC_FILE=5280@182.168.6.3
export MGLS_LICENSE_FILE=30000@loginserver:30000@10.107.0.230
export ATRENTA_LICENSE_FILE=31000@10.107.0.230
#export ATRENTA_LICENSE_FILE=31000@loginserver




############ EDA TOOLS #############
## VCS 2018
#export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/bin
#
#export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64/lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/amd64/lib
#export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2/linux64
#export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vO-2018.09-SP2/vcs-mx/O-2018.09-SP2

## VCS 2014
export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/bin
export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/bin
export PATH=$PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/linux/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1/amd64/lib
export VCS_HOME=/export/pfs/edatools/synopsys/vcs-mx_vJ-2014.12-SP1


export VCS_ARCH_OVERRIDE=linux
export VCS_ENABLE_ASLR_SUPPORT=1 
export VCS_PRINT_INITREG_INITIALIZATION=1



## DC
export SYNOPSYS=/export/pfs/edatools/synopsys/syn_vN-2017.09-SP5/syn/N-2017.09-SP5
export SYNOPSYS_DC=/export/pfs/edatools/synopsys/syn_vN-2017.09-SP5/syn/N-2017.09-SP5
export PATH=$PATH:/export/pfs/edatools/synopsys/syn_vN-2017.09-SP5/syn/N-2017.09-SP5/linux64/syn/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/syn_vN-2017.09-SP5/syn/N-2017.09-SP5/libraries

#export SYNOPSYS=/export/pfs/edatools/synopsys/syn_vJ-2014.09-SP1
#export SYNOPSYS_DC=/export/pfs/edatools/synopsys/syn_vJ-2014.09-SP1
#export PATH=$PATH:/export/pfs/edatools/synopsys/syn_vJ-2014.09-SP1/amd64/syn/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/syn_vJ-2014.09-SP1/libraries


## FM
export SYNOPSYS=/export/pfs/edatools/synopsys/fm_vO-2018.06-SP5/
export PATH=$PATH:/export/pfs/edatools/synopsys/fm_vO-2018.06-SP5/fm/O-2018.06-SP5/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/fm_vO-2018.06-SP5/fm/O-2018.06-SP5/libraries

#export SYNOPSYS=/export/pfs/edatools/synopsys/fm_vM-2016.12-SP4/fm/M-2016.12-SP4
#export PATH=$PATH:/export/pfs/edatools/synopsys/fm_vM-2016.12-SP4/fm/M-2016.12-SP4/linux64/fm/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/fm_vM-2016.12-SP4/fm/M-2016.12-SP4/libraries



## PT
#export PATH=$PATH:/export/pfs/edatools/synopsys/pts_vO-2018.06-SP5/pts/O-2018.06-SP5/linux64/syn/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/pts_vO-2018.06-SP5/pts/O-2018.06-SP5/libraries
export PATH=$PATH:/export/pfs/edatools/synopsys/pt_vN-2017.12-SP3/pts/N-2017.12-SP3/amd64/syn/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/pt_vN-2017.12-SP3/pts/N-2017.12-SP3/libraries

export PATH=$PATH:/export/pfs/edatools/synopsys/leda_vH-2013.03/bin
export LEDA_PATH=/export/pfs/edatools/synopsys/leda_vH-2013.03

## Synopsy LEDA

## verdi
export VERDI_HOME=/export/pfs/edatools/synopsys/verdi_vO-2018.09-SP2/verdi/Verdi_O-2018.09-SP2/
export PATH=$PATH:$VERDI_HOME/bin
export LM_LICENSE_FILE=33000@node6:$LM_LICENSE_FILE
export NOVAS_HOME=/export/pfs/edatools/synopsys/verdi_vO-2018.09-SP2/verdi/Verdi_O-2018.09-SP2/


## spyglass
export PATH=$PATH:/export/pfs/edatools/synopsys/spygass_vO/spyglass/SPYGLASS2018.09-SP1/SPYGLASS_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/spygass_vO/spyglass/SPYGLASS2018.09-SP1/SPYGLASS_HOME/lib
export SPYGLASS_HOME=/export/pfs/edatools/synopsys/spygass_vO/spyglass/SPYGLASS2018.09-SP1/SPYGLASS_HOME

export PATH=$PATH:/export/pfs/edatools/synopsys/fpga_vL-2018.03/fpga/N-2018.03/bin

export PATH=$PATH:/export/pfs/edatools/synopsys/tx_vO-2018.06-SP5/txs/O-2018.06-SP5/amd64/bin

export PATH=$PATH:/export/pfs/edatools/synopsys/coreTools_vO-2018.09-SP4/coretools/O-2018.09-SP4/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/coreTools_vO-2018.09-SP4/coretools/O-2018.09-SP4/libraries


#spyglass

# export PATH=$PATH:/export/pfs/edatools/synopsys/spygass_vO/spyglass/SPYGLASS2018.09-SP1/SPYGLASS_HOME/bin/
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/spygass_vO/spyglass/SPYGLASS2018.09-SP1/SPYGLASS_HOME/lib
# #export SPYGLASS_DC_PATH=$SYNOPSYS
# #export SPYGLASS_DC_PATH=/export/pfs/edatools/synopsys/syn_vG-2012.06/amd64/syn/bin
# export SPYGLASS_HOME=/export/pfs/edatools/Atrenta/SpyGlass-4.2.0/SPYGLASS_HOME

# ARChitect
export ARCHITECT_ROOT=/export/pfs/home/lte_veri/zhangxiuzhi/opt/ARC/ARChitect
export PATH=$PATH:/export/pfs/home/lte_veri/zhangxiuzhi/opt/ARC/ARChitect/bin/linux
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_veri/zhangxiuzhi/opt/ARC/ARChitect/bin/linux64
export SNPSLMD_LICENSE_FILE=$SNPSLMD_LICENSE_FILE:27000@node30




# VIPP environment set
#########################################################
#export SPECMAN_PATH=${VIPCAT}/packages:${CDN_VIP_LIB_PATH}/64bit
# AHB assertion IP
# ABVIP - Release ABVIPAHB10, version:01.00-p001
#export ABVIP ${VIPCAT}/ABVIPAHB10/tools/abvip
#export VIPCAT=/export/pfs/home/lte_soc/panyingjin/VIPCAT113036
export VIPCAT=/export/pfs/home/lte_veri/liwenwen/software_install/VIPCAT113
export CDN_VIP_ROOT=${VIPCAT}
# DENALI setup
#64bit
#export FLEXLM_DIAGNOSTICS=3
export DENALI=${VIPCAT}/tools/denali_64bit
export PATH=${CDN_VIP_ROOT}/tools.lnx86/bin:$DENALI/bin:$PATH
export CDN_VIP_LIB_PATH=${CDN_VIP_ROOT}/tools/psui/lib
export SPECMAN_PATH=${VIPCAT}/packages:${CDN_VIP_LIB_PATH}/64bit
export LD_LIBRARY_PATH=/lib64:${CDN_VIP_LIB_PATH}/64bit:${DENALI}/verilog:${CDN_VIP_ROOT}/tools/lib/64bit:${LD_LIBRARY_PATH}

export UVC_MSI_MODE=1
alias denali_uvm='cd ${CDN_VIP_ROOT}/tools.lnx86/denali_64bit/ddvapi/sv'

###########################################################


## Synopsys MVTOOLS
export PATH=$PATH:/export/pfs/home/lte_soc/sungang/tools/synopsys/H-2013.06-15/amd64/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_soc/sungang/tools/synopsys/H-2013.06-15/amd64/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_soc/sungang/tools/synopsys/H-2013.06-15/amd64/lib/oa
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_soc/sungang/tools/synopsys/H-2013.06-15/linux/lib
export ARCHPRO_ROOT=/export/pfs/home/lte_soc/sungang/tools/synopsys/H-2013.06-15/


## ARM ds-5
export LM_LICENSE_FILE=$LM_LICENSE_FILE:37000@loginserver
export PATH=$PATH:/export/pfs/edatools/arm/ds-5/sw/eclipse:/export/pfs/edatools/arm/ds-5/bin


#ARM toolchain
export PATH=$PATH:/export/pfs/edatools/arm/ds-5/sw/eclipse:/export/pfs/edatools/arm/ds-5/bin
export ARMLMD_LICENSE_FILE=$ARMLMD_LICENSE_FILE:37000@loginserver:8224@10.21.1.237
export LM_LICENSE_FILE=$LM_LICENSE_FILE:37000@loginserver:8224@10.21.1.237



## Synopsy ICC
export PATH=/export/pfs/edatools/synopsys/icc_vH-2013.03-SP1/amd64/syn/bin:$PATH
export LD_LIBRARY_PATH=/export/pfs/edatools/synopsys/icc_vH-2013.03-SP1/lib/AMD.64:$LD_LIBRARY_PATH



# Astro
export PATH=$PATH:/export/pfs/edatools/synopsys/astro/Z-2007.03-SP5/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/astro/Z-2007.03-SP5/lib/



## Quartus11.0
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_8.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_10.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_11.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_12.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_14.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_20.dat
export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_21.dat
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_23.dat
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_24.dat
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_25.dat
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_26.dat
#export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_27.dat
export QUARTUS_ROOTDIR=/export/pfs/edatools/Altera/11.0/quartus/
export PATH=$PATH:/export/pfs/edatools/Altera/11.0/quartus/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/11.0/quartus/linux64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/11.0/quartus/libraries
#export QUARTUS_ROOTDIR=/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus/linux64
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus/libraries
export QUARTUS_64BIT=1
export QUARTUS_MWWM=allwm

#Quartus19.1
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_8.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_10.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_11.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_12.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_14.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_20.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/home/lte_soc/linjianhua/license_11.0/license_21.dat
##export LM_LICENSE_FILE=$LM_LICENSE_FILE:/export/pfs/edatools/Altera/19.1/licenses/license.txt
#export QUARTUS_ROOTDIR=/export/pfs/edatools/Altera/19.1/quartus
#export PATH=$PATH:/export/pfs/edatools/Altera/19.1/quartus/bin
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/19.1/quartus/linux64
##export LD_LIBRARY_PATH=$LD_LIBRARY_FILE:/export/pfs/edatools/Altera/19.1/quartus/linux64/libxerces-c-3.2.so
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/19.1/quartus/libraries
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/19.1/quartus/linux64
##export QUARTUS_ROOTDIR=/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus
##export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus/linux64
##export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/home/lte_veri/chenyang/altera/13.1/quartus/libraries
#export QUARTUS_64BIT=1
#export QUARTUS_MWWM=allwm

## modelsim ae 
export PATH=$PATH:/export/pfs/edatools/Altera/modelsim_ae/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Altera/modelsim_ae/linux


## coware PD
export PATH=$PATH:/export/pfs/edatools/synopsys/CoWare/V2010.09_SP1/PD/linux/bin

## VERA
export VERA_BITMODE=32
export VERA_CC=gcc
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vera_vI-2014.03-1/vera_vI-2014.03-1_linux/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/synopsys/vera_vI-2014.03-1/vera_vI-2014.03-1_amd64/lib
export VERA_HOME=/export/pfs/edatools/synopsys/vera_vI-2014.03-1/vera_vI-2014.03-1_amd64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VERA_HOME/lib
export PATH=$PATH:$VERA_HOME/bin


#IC
export PATH=$PATH:/export/pfs/edatools/cadence/IC5141USR5/tools/dfII/bin:/export/pfs/edatools/cadence/IC5141USR5/tools/bin

#cadence
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/cadence/IC5141USR5/tools/dfII/lib:/export/pfs/edatools/cadence/IC5141USR5/tools/lib
#conformal
export PATH=$PATH:/export/pfs/edatools/cadence/CONFORMAL/lec.05.00-p120/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/cadence/CONFORMAL/lec.05.00-p120/lib
export VERPLEX_HOME=/export/pfs/edatools/cadence/CONFORMAL/lec.05.00-p120
#mentor
#export PATH=$PATH:/export/pfs/edatools/mentor/dft_2008.2.10/bin
export PATH=$PATH:/export/pfs/edatools/mentor/dft_2009_1_10/bin
export PATH=$PATH:/export/pfs/edatools/mentor/ixl_cal_2008.4_37.26/bin

## Vivado 2015.02
export PATH=$PATH:/export/pfs/edatools/xilinx/Xilinx_Vivado_SDK_Lin_2015.2_0626_1/Vivado/2015.2
#source /export/pfs/edatools/xilinx/Xilinx_Vivado_SDK_Lin_2015.2_0626_1/Vivado/2015.2/settings64.sh
#source /export/pfs/edatools/xilinx/Xilinx_Vivado_SDK_Lin_2015.2_0626_1/Vivado/2015.2/settings64.csh
export XILINX_VIVADO=/export/pfs/edatools/xilinx/Xilinx_Vivado_SDK_Lin_2015.2_0626_1/Vivado/2015.2
export PATH=$PATH:/export/pfs/edatools/xilinx/14.5/ISE_DS/ISE/bin/lin64
export XILINX=/export/pfs/edatools/xilinx/14.5/ISE_DS/ISE


#Adobe
export PATH=$PATH:/export/pfs/edatools/Adobe/8/Reader8/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/pfs/edatools/Adobe/8/Reader8/bin


#for tsmc65 Mbistarchitecture
export PATH=$PATH:/export/pfs/edatools/mentor/dft_2008.2.10/bin
export MGLS_LICENSE_FILE=30000@loginserver

#or-elf
#export PATH=$PATH:/export/pfs/home/lte_soc/sungang/or32-elf/bin

#P4merge
export PATH=$PATH:/export/pfs/edatools/tools/p4v-2010.1/bin

#BeyondCompare
export PATH=$PATH:/export/pfs/edatools/tools/bcompare/bin/


#matlab

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/eda/edatools/MathWorks/MatLab2008b/bin/glnxa64

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/export/eda/edatools/MathWorks/MatLab2008b/sys/os/glnxa64



export uvmHome=$VCS_HOME/etc/uvm-1.1


## Screen
export PATH=$PATH:/export/pfs/home/lte_soc/guosijia/.tools/screen/screen-4.2.1
#export PATH=$PATH://export/pfs/home/lte_soc/sungang/tools/screen/screen-4.2.1

