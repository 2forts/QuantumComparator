OPENQASM 2.0;
include "qelib1.inc";

qreg q[12];
creg c[12];
x q[0];
x q[3];
x q[6];
x q[9];
ccx q[0], q[1], q[2];
cx q[2], q[3];
cx q[2], q[4];
ccx q[3], q[4], q[5];
cx q[2], q[5];
cx q[5], q[6];
cx q[5], q[7];
ccx q[6], q[7], q[8];
cx q[5], q[8];
cx q[8], q[9];
cx q[8], q[10];
ccx q[9], q[10], q[11];
cx q[8], q[11];
cx q[8], q[10];
cx q[8], q[9];
cx q[5], q[8];
ccx q[6], q[7], q[8];
cx q[5], q[7];
cx q[5], q[6];
cx q[2], q[5];
ccx q[3], q[4], q[5];
cx q[2], q[4];
cx q[2], q[3];
ccx q[0], q[1], q[2];
barrier q[0], q[1], q[2], q[3], q[4], q[5], q[6], q[7], q[8], q[9], q[10], q[11];
x q[0];
x q[3];
x q[6];
x q[9];
measure q[11] -> c[11];
