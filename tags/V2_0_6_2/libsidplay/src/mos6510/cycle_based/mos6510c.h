/***************************************************************************
                          main.h  -  description
                             -------------------
    begin                : Thu May 11 2000
    copyright            : (C) 2000 by Simon White
    email                : s_a_white@email.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef _mos6510c_h_
#define _mos6510c_h_

class MOS6510: public C64Environment
{
public:
    MOS6510 ();
    virtual       ~MOS6510 ();
    virtual        void reset     (void);
    virtual inline void clock     (void);
    virtual        void credits   (char *str);
    virtual        void DumpState (void);

public: // Non-standard functions
    inline  void   triggerRST     (void);
    inline  void   triggerNMI     (void);
    inline  void   triggerIRQ     (void);
    inline  void   clearIRQ       (void);

protected:
    void        Initialise       (void);
    // Declare Interrupt Routines
    inline void RSTRequest       (void);
    inline void RST1Request      (void);
    inline void NMIRequest       (void);
    inline void NMI1Request      (void);
    inline void IRQRequest       (void);
    inline void IRQ1Request      (void);
    inline void IRQ2Request      (void);
    inline void interruptPending (void);

    // Declare Instrunction Routines
    inline void FetchOpcode           (void);
    inline void FetchDataByte         (void);
    inline void FetchLowAddr          (void);
    inline void FetchLowAddrX         (void);
    inline void FetchLowAddrY         (void);
    inline void FetchHighAddr         (void);
    inline void FetchHighAddrX        (void);
    inline void FetchHighAddrY        (void);
    inline void FetchLowEffAddr       (void);
    inline void FetchHighEffAddr      (void);
    inline void FetchHighEffAddrY     (void);
    inline void FetchLowPointer       (void);
    inline void FetchLowPointerX      (void);
    inline void FetchHighPointer      (void);

    inline void FetchEffAddrDataByte  (void);
    inline void PutEffAddrDataByte    (void);
    inline void PushLowPC             (void);
    inline void PushHighPC            (void);
    inline void PushSR                (void);
    inline void PopLowPC              (void);
    inline void PopHighPC             (void);
    inline void PopSR                 (void);
    inline void WasteCycle            (void);

    // Delcare Instruction Operation Routines
    inline void adc_instr     (void);
    inline void alr_instr     (void);
    inline void anc_instr     (void);
    inline void and_instr     (void);
    inline void ane_instr     (void);
    inline void arr_instr     (void);
    inline void asl_instr     (void);
    inline void asla_instr    (void);
    inline void aso_instr     (void);
    inline void axa_instr     (void);
    inline void axs_instr     (void);
    inline void bcc_instr     (void);
    inline void bcs_instr     (void);
    inline void beq_instr     (void);
    inline void bit_instr     (void);
    inline void bmi_instr     (void);
    inline void bne_instr     (void);
    inline void bpl_instr     (void);
    inline void brk_instr     (void);
    inline void brk1_instr    (void);
    inline void brk2_instr    (void);
    inline void brk3_instr    (void);
    inline void bvc_instr     (void);
    inline void bvs_instr     (void);
    inline void clc_instr     (void);
    inline void cld_instr     (void);
    inline void cli_instr     (void);
    inline void clv_instr     (void);
    inline void cmp_instr     (void);
    inline void cpx_instr     (void);
    inline void cpy_instr     (void);
    inline void dcm_instr     (void);
    inline void dec_instr     (void);
    inline void dex_instr     (void);
    inline void dey_instr     (void);
    inline void eor_instr     (void);
    inline void inc_instr     (void);
    inline void ins_instr     (void);
    inline void inx_instr     (void);
    inline void iny_instr     (void);
    inline void jmp_instr     (void);
    inline void jsr_instr     (void);
    inline void las_instr     (void);
    inline void lax_instr     (void);
    inline void lda_instr     (void);
    inline void ldx_instr     (void);
    inline void ldy_instr     (void);
    inline void lse_instr     (void);
    inline void lsr_instr     (void);
    inline void lsra_instr    (void);
    inline void oal_instr     (void);
    inline void ora_instr     (void);
    inline void pha_instr     (void);
    inline void pla_instr     (void);
    inline void plp_instr     (void);
    inline void rla_instr     (void);
    inline void rol_instr     (void);
    inline void rola_instr    (void);
    inline void ror_instr     (void);
    inline void rora_instr    (void);
    inline void rra_instr     (void);
    inline void rti_instr     (void);
    inline void rts_instr     (void);
    inline void sbx_instr     (void);
    inline void say_instr     (void);
    inline void sbc_instr     (void);
    inline void sec_instr     (void);
    inline void sed_instr     (void);
    inline void sei_instr     (void);
    inline void shs_instr     (void);
    inline void sta_instr     (void);
    inline void stx_instr     (void);
    inline void sty_instr     (void);
    inline void tas_instr     (void);
    inline void tax_instr     (void);
    inline void tay_instr     (void);
    inline void tsx_instr     (void);
    inline void txa_instr     (void);
    inline void txs_instr     (void);
    inline void tya_instr     (void);
    inline void xas_instr     (void);
    void        illegal_instr (void);

    // Declare Arithmatic Operations
    inline void Perform_ADC   (void);
    inline void Perform_SBC   (void);

    // Declare processor operations
    struct ProcessorOperations
    {
        void       (MOS6510::**cycle)(void);
        sbyte_sidt lastCycle;
        bool       overlap;
        sbyte_sidt lastAddrCycle;
        ubyte_sidt opcode;
    };

    struct ProcessorOperations  instrTable[0x100];
    struct ProcessorOperations  interruptTable[3];
    struct ProcessorOperations *instr;

    uword_sidt instrStartPC;
    ubyte_sidt instrOpcode;
    void       (MOS6510::**procCycle) (void);
    sbyte_sidt lastAddrCycle;
    sbyte_sidt lastCycle ;
    sbyte_sidt cycleCount;

    // Pointers to the current instruction cycle
    uword_sidt  Cycle_EffectiveAddress;
    sbyte_sidt  Cycle_Data;
    uword_sidt  Cycle_Pointer;

    sbyte_sidt  Register_Accumulator;
    ubyte_sidt  Register_X;
    ubyte_sidt  Register_Y;
    udword_sidt Register_ProgramCounter;
    ubyte_sidt  Register_Status;
    sbyte_sidt  Register_c_Flag;
    sbyte_sidt  Register_n_Flag;
    sbyte_sidt  Register_v_Flag;
    sbyte_sidt  Register_z_Flag;
    uword_sidt  Register_StackPointer;
    uword_sidt  instr_Operand;

    // Interrupts
    struct
    {
        uword_sidt pending;
        ubyte_sidt irqs;
    } interrupts;

    ubyte_sidt Debug_Data;
    uword_sidt Debug_EffectiveAddress;
    ubyte_sidt Debug_Opcode;
    uword_sidt Debug_Operand;
    uword_sidt Debug_ProgramCounter;

public:
    // CRC Bits
    unsigned long crc;

private:
    unsigned long crcTable[0x100];
};

#endif // _mos6510c_h_