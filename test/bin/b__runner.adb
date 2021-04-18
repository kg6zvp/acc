pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__runner.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__runner.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E068 : Short_Integer; pragma Import (Ada, E068, "system__os_lib_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__soft_links_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "system__exception_table_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__io_exceptions_E");
   E041 : Short_Integer; pragma Import (Ada, E041, "ada__containers_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "ada__strings_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__strings__maps_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__strings__maps__constants_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "interfaces__c_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "system__soft_links__initialize_E");
   E074 : Short_Integer; pragma Import (Ada, E074, "system__object_reader_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "system__dwarf_lines_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "system__traceback__symbolic_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__tags_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "ada__streams_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "system__file_control_block_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "system__finalization_root_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "ada__finalization_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__file_io_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "ada__streams__stream_io_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__storage_pools_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "system__finalization_masters_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "system__storage_pools__subpools_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__strings__unbounded_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "ada__calendar_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "ada__calendar__time_zones_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "ada__text_io_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__assertions_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__pool_global_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "system__regexp_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "ada__directories_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "acc_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "helper_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "acc_test_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E005 := E005 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "acc_test__finalize_spec");
      begin
         if E005 = 0 then
            F1;
         end if;
      end;
      E007 := E007 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "acc__finalize_spec");
      begin
         if E007 = 0 then
            F2;
         end if;
      end;
      E165 := E165 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__directories__finalize_spec");
      begin
         if E165 = 0 then
            F3;
         end if;
      end;
      E189 := E189 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__regexp__finalize_spec");
      begin
         if E189 = 0 then
            F4;
         end if;
      end;
      E142 := E142 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_global__finalize_spec");
      begin
         if E142 = 0 then
            F5;
         end if;
      end;
      E157 := E157 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "ada__text_io__finalize_spec");
      begin
         if E157 = 0 then
            F6;
         end if;
      end;
      E101 := E101 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__unbounded__finalize_spec");
      begin
         if E101 = 0 then
            F7;
         end if;
      end;
      E115 := E115 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__storage_pools__subpools__finalize_spec");
      begin
         if E115 = 0 then
            F8;
         end if;
      end;
      E117 := E117 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__finalization_masters__finalize_spec");
      begin
         if E117 = 0 then
            F9;
         end if;
      end;
      E148 := E148 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "ada__streams__stream_io__finalize_spec");
      begin
         if E148 = 0 then
            F10;
         end if;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__file_io__finalize_body");
      begin
         E154 := E154 - 1;
         if E154 = 0 then
            F11;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      if E018 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E016 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E016 := E016 + 1;
      if E063 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E063 := E063 + 1;
      if E041 = 0 then
         Ada.Containers'Elab_Spec;
      end if;
      E041 := E041 + 1;
      if E026 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E026 := E026 + 1;
      if E013 = 0 then
         Ada.Strings'Elab_Spec;
      end if;
      E013 := E013 + 1;
      if E096 = 0 then
         Ada.Strings.Maps'Elab_Spec;
      end if;
      if E099 = 0 then
         Ada.Strings.Maps.Constants'Elab_Spec;
      end if;
      E099 := E099 + 1;
      if E068 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E068 := E068 + 1;
      if E046 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E092 = 0 then
         System.Soft_Links.Initialize'Elab_Body;
      end if;
      E092 := E092 + 1;
      E018 := E018 + 1;
      E096 := E096 + 1;
      E046 := E046 + 1;
      if E074 = 0 then
         System.Object_Reader'Elab_Spec;
      end if;
      if E053 = 0 then
         System.Dwarf_Lines'Elab_Spec;
      end if;
      E074 := E074 + 1;
      if E040 = 0 then
         System.Traceback.Symbolic'Elab_Body;
      end if;
      E040 := E040 + 1;
      E053 := E053 + 1;
      if E105 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E105 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E105 := E105 + 1;
      if E122 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E122 := E122 + 1;
      if E155 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E155 := E155 + 1;
      if E124 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E124 := E124 + 1;
      if E120 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E120 := E120 + 1;
      if E154 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E154 := E154 + 1;
      if E148 = 0 then
         Ada.Streams.Stream_Io'Elab_Spec;
      end if;
      E148 := E148 + 1;
      if E126 = 0 then
         System.Storage_Pools'Elab_Spec;
      end if;
      E126 := E126 + 1;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Spec;
      end if;
      if E117 = 0 then
         System.Finalization_Masters'Elab_Body;
      end if;
      E117 := E117 + 1;
      if E115 = 0 then
         System.Storage_Pools.Subpools'Elab_Spec;
      end if;
      E115 := E115 + 1;
      if E101 = 0 then
         Ada.Strings.Unbounded'Elab_Spec;
      end if;
      E101 := E101 + 1;
      if E167 = 0 then
         Ada.Calendar'Elab_Spec;
      end if;
      if E167 = 0 then
         Ada.Calendar'Elab_Body;
      end if;
      E167 := E167 + 1;
      if E173 = 0 then
         Ada.Calendar.Time_Zones'Elab_Spec;
      end if;
      E173 := E173 + 1;
      if E157 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E157 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E157 := E157 + 1;
      if E140 = 0 then
         System.Assertions'Elab_Spec;
      end if;
      E140 := E140 + 1;
      if E142 = 0 then
         System.Pool_Global'Elab_Spec;
      end if;
      E142 := E142 + 1;
      if E189 = 0 then
         System.Regexp'Elab_Spec;
      end if;
      E189 := E189 + 1;
      if E165 = 0 then
         Ada.Directories'Elab_Spec;
      end if;
      if E165 = 0 then
         Ada.Directories'Elab_Body;
      end if;
      E165 := E165 + 1;
      if E007 = 0 then
         ACC'ELAB_SPEC;
      end if;
      E007 := E007 + 1;
      E163 := E163 + 1;
      if E005 = 0 then
         Acc_Test'Elab_Spec;
      end if;
      E005 := E005 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_runner");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/smccollum/git/acc/build/acc.o
   --   /home/smccollum/git/acc/test/bin/helper.o
   --   /home/smccollum/git/acc/test/bin/acc_test.o
   --   /home/smccollum/git/acc/test/bin/runner.o
   --   -L/home/smccollum/git/acc/test/bin/
   --   -L/home/smccollum/git/acc/test/bin/
   --   -L/home/smccollum/git/acc/build/
   --   -L/usr/lib64/ahven/
   --   -L/usr/lib/gcc/x86_64-redhat-linux/9/adalib/
   --   -shared
   --   -lgnat-9
   --   -ldl
--  END Object file/option list   

end ada_main;
