1.What is PostgreSQL?

=> এটি মূলত একটি রিলেশনাল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম ,আমরা এইখানে CRUD অপারেশন চালাতে পারি SQL ব্যাবহার করে। এই ডাটাবেজ ম্যানেজমেন্ট সিস্টেমটি ওপেন সোর্স তাই বেশ পপুলার অনেক ইউজার একসাথে ইনসার্ট এন্ড আপডেট অপারেশন করতে পারে, এর মধ্যে বিল্ড ইন গ্রাফিকাল ইউজার ইন্টারফেস আছে (PgAdmin)।

2.Explain the Primary Key and Foreign Key concepts in PostgreSQL.

=> প্রাইমারি কি হলো একটি টেবেল এর প্রতি রো এর জন্য আলাদা একটা আইডি যার মাধ্যমে একটি নির্দিষ্ট ডাটা খুজে বের করা অনেক সহজ হয়ে যায় ডাটাবেজ থেকে। এবং ফরেন কি হলো একটি টেবিল এর প্রাইমারি আইডি যখন অন্য টেবিল এ রেফারেন্স এর জন্য ব্যবহার করা হয় তখন সেটি কে ওই টেবিল এর ফরেন কি বলে।

3.What is the difference between the VARCHAR and CHAR data types?

=> varchar  ব্যাবহার করে আমরা যত ইচ্ছা শব্দ লেখতে পারি বা ইনপুট দিতে পারি এবং এটি ডাটাবেস এর স্টোরেজ নষ্ট করে না তবে ,যতটুকু প্রয়োজন ততটুকু ব্যাবহার করে। কিন্তু char  ব্যবহার ক্রলে আমরা যখন ফিক্সটড শব্দ এর ইনপুট সেট করে দেই তখন এর বেশি ইনপুট দিতে পারি না বরং এর কম শব্দ দিলেও সেটি ডাটাবেস থেকে সেই পরিমান জায়গা নিয়ে নেয়।

4.Explain the purpose of the WHERE clause in a SELECT statement.

=> select স্টেট্মেন্ট এ where ব্যাবহার করার উদ্দেশ্য হলো কিছুটা লজিক্যাল ব্যাবহার করে ডাটা কে ফিল্টার করে আনা। কোন একটা ডাটা অনেক গুলো ডাটা এর মাঝ থেকে খুজে বের করতেও অনেক ব্যবহার হয় , ডাআত সার্চ করতে যেমনঃ select * from PH_developers where developer like '%noman%';


5.Explain the GROUP BY clause and its role in aggregation operations.

GROUP BY ক্লজ এর মূল উদ্দেশ্য হলো ডাটাগুলোকে নির্দিষ্ট কলামের মান অনুসারে ভাগ করা বা গ্রুপ করা।  বিভিন্ন ধরণের গণনামূলক কাজের  সময় ব্যবহার করা হয়। মানে, ডাটাগুলোর উপর যখন কোনো summary বা aggregate ফাংশন (যেমন: COUNT(), SUM(), AVG(), MAX(), MIN()) চালাতে হয়, তখন কোন কলাম অনুযায়ী গ্রুপ করে সেই কাজটা করব – সেটা GROUP BY দিয়ে ঠিক করে দেওয়া হয়।