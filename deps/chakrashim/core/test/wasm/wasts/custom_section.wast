;;-------------------------------------------------------------------------------------------------------
;; Copyright (C) Microsoft Corporation and contributors. All rights reserved.
;; Licensed under the MIT license. See LICENSE.txt file in the project root for full license information.
;;-------------------------------------------------------------------------------------------------------

;; Reference: https://github.com/WebAssembly/spec/blob/master/interpreter/test/custom_section.wast
;; See ..\..\WasmSpec\testsuite\LICENSE for license details
(module
  "\00asm" "\01\00\00\00"
  "\00\24\10" "a custom section" "this is the payload"
  "\00\20\10" "a custom section" "this is payload"
  "\00\11\10" "a custom section" ""
  "\00\10\00" "" "this is payload"
  "\00\01\00" "" ""
  "\00\24\10" "\00\00custom sectio\00" "this is the payload"
)

(module
  "\00asm" "\01\00\00\00"
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\01\01\00"  ;; type section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\02\01\00"  ;; import section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\03\01\00"  ;; function section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\04\01\00"  ;; table section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\05\01\00"  ;; memory section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\06\01\00"  ;; global section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\07\01\00"  ;; export section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\09\01\00"  ;; element section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\0a\01\00"  ;; code section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
  "\0b\01\00"  ;; data section
  "\00\0e\06" "custom" "payload"
  "\00\0e\06" "custom" "payload"
)

(module
  "\00asm" "\01\00\00\00"
  "\01\07\01\60\02\7f\7f\01\7f"                ;; type section
  "\00\1a\06" "custom" "this is the payload"   ;; custom section
  "\03\02\01\00"                               ;; function section
  "\07\0a\01\06\61\64\64\54\77\6f\00\00"       ;; export section
  "\0a\09\01\07\00\20\00\20\01\6a\0b"          ;; code section
  "\00\1b\07" "custom2" "this is the payload"  ;; custom section
)
