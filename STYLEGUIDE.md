# Nexora Finance Style Guide

Version: 2.0

---

# Vision

Nexora Finance adalah aplikasi personal finance modern yang menggabungkan pencatatan keuangan, budget, goals, investasi, dan AI dalam satu ekosistem dengan UI premium dan arsitektur yang scalable.

---

# Design Principles

- Clean
- Modern
- Premium
- Minimal
- Consistent
- Fast
- Responsive

---

# Color Palette

Primary
#7C5CFF

Secondary
#00D4FF

Success
#2ECC71

Warning
#F5B041

Danger
#FF5C5C

Background
#0B1120

Surface
#151F34

Card
#1D2942

Divider
#263248

Text Primary
#FFFFFF

Text Secondary
#B8C1D1

---

# Typography

Primary Font

Geist

Code / Number Font

JetBrains Mono

Sizes

Display 32

Headline 28

Title 22

Subtitle 18

Body 16

Caption 14

Small 12

---

# Border Radius

Small
12

Medium
16

Large
20

Extra Large
24

Circle
999

---

# Spacing

XS
4

SM
8

MD
12

LG
16

XL
20

XXL
24

XXXL
32

---

# Shadow

Soft

Blur

Opacity rendah

Tidak menggunakan shadow Android bawaan.

---

# Component Rules

Semua Button menggunakan AppButton.

Semua Card menggunakan AppCard.

Semua TextField menggunakan AppTextField.

Semua Dialog menggunakan AppDialog.

Semua Bottom Sheet menggunakan AppBottomSheet.

Tidak membuat widget langsung di page jika akan digunakan lebih dari sekali.

---

# Color Rules

Dilarang

Colors.blue

Colors.red

Colors.green

Gunakan

AppColors.primary

AppColors.success

AppColors.danger

---

# Typography Rules

Dilarang

TextStyle()

Gunakan

AppTypography

---

# Radius Rules

Dilarang

BorderRadius.circular(20)

Gunakan

AppRadius

---

# Spacing Rules

Dilarang

SizedBox(height: 17)

Gunakan

Gap(AppSpacing.lg)

---

# Folder Structure

lib

app

core

features

shared

---

# Feature Structure

feature

data

domain

presentation

---

# Naming Convention

Class

PascalCase

Variable

camelCase

File

snake_case

Constant

camelCase

---

# Git Commit

feat:

fix:

refactor:

docs:

style:

chore:

test:

---

# Sprint Roadmap

Sprint 0

Foundation

Sprint 1

Dashboard

Sprint 2

Transaction

Sprint 3

Budget

Sprint 4

Goals

Sprint 5

Report

Sprint 6

Investment

Sprint 7

AI

Sprint 8

Polish

---

# UI Rules

Semua halaman memiliki:

Loading State

Empty State

Error State

Pull To Refresh jika diperlukan.

---

# Dashboard Layout

Header

↓

Balance Card

↓

Budget Summary

↓

Goals Summary

↓

Recent Transaction

↓

Chart

↓

Floating Action Button

---

# Goals

Wishlist

Saving Goal

Dana Darurat

Cicilan

---

# Investment

Crypto

Saham

Emas

Reksa Dana

Obligasi

Deposito

---

# AI

Insight

Prediction

Reminder

Chat

---

# Philosophy

Build once.

Reuse everywhere.

Consistency over complexity.

Quality over quantity.