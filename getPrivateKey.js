const { ethers } = require('ethers');
const fs = require('fs');
const path = require('path');
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

// --- KONFIGURASI ---
// TODO: Ganti ini dengan path lengkap ke file keystore Anda
const keystoreFilePath = '...';

console.log(`Membaca file keystore dari: ${keystoreFilePath}`);

if (!fs.existsSync(keystoreFilePath)) {
  console.error("\nERROR: File keystore tidak ditemukan!");
  console.error(`Pastikan path '${keystoreFilePath}' sudah benar.`);
  readline.close();
  return;
}

const keystoreJson = fs.readFileSync(path.resolve(keystoreFilePath), 'utf8');

readline.question('\nMasukkan password untuk akun ini: ', async (password) => {
  try {
    console.log('Mendekripsi...');
    const wallet = await ethers.Wallet.fromEncryptedJson(keystoreJson, password);

    console.log('\n=================================================');
    console.log('✅ Berhasil! Ini adalah detail akun Anda:');
    console.log('=================================================');
    console.log('Alamat Akun   :', wallet.address);
    console.log('Private Key   :', wallet.privateKey);
    console.log('=================================================');
    console.log('\nSalin Private Key di atas dan impor ke MetaMask.');

  } catch (error) {
    console.error('\n❌ Gagal mendekripsi! Password salah atau file korup.');
  } finally {
    readline.close();
  }
});