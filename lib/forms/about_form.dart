// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutForm extends StatelessWidget {
  static String id = "AboutForm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Text("About"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset("assets/q.png", height: 180),
                SizedBox(height: 30),
                SizedBox(
                  width: 340,
                  child: Text(
                    "Quickie is an online fees payment mobile application for Palawan State University Narra Campus, a CS Innovation for a fast, cashless and reliable payment transaction",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Terms and conditions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "These terms and conditions set forth the general terms and conditions of your use of the Quickie mobile application and any of its related products and services. This Agreement is legally binding between User and this Mobile Application developer. If you are entering into this agreement on behalf of a business or other  legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms, you shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read,understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Accounts and membership",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may, but have no obligation to, monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Links to other resources",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Although the Mobile Application and Services may link to other resources (such as websites, mobile applications,etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. Some of the links in the Mobile Application may be affiliate links. This means if you click on the link and purchase an item, the Operator will receive an affiliate commission. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application. Your linking to any other off-site resources is at your own risk.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Prohibited uses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "In addition to other terms as set forth in the Agreement, you are prohibited from using the Mobile Application andServices or Content: for any unlawful purpose; to solicit others to perform or participate in any unlawful acts; to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; to infringe upon or violate our intellectual property rights or the intellectual property rights of others; to harass,abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation,religion, ethnicity, race, age, national origin, or disability; to submit false or misleading information; to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Mobile Application and Services, third party products and services, or the Internet; to spam, phish, pretext, spider, crawl, or scrape; for any obscene or immoral purpose; or to interfere with or circumvent the security features of the Mobile Application and Services, third party products and services, or the Internet. We reserve the right to terminate your use of the Mobile Application and Services for violating any of the prohibited uses.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Intellectual property rights",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Intellectual Property Rights” means all present and future rights conferred by statute, common law or equity in or in relation to any copyright and related rights, trademarks, designs, patents, inventions, goodwill and the right to sue for passing off, rights to inventions, rights to use, and all other intellectual property rights, in each case whether registered or unregistered and including all applications and rights to apply for and be granted, rights to claim priority from, such rights and all similar or equivalent rights or forms of protection and any other results of intellectual activity which subsist or will subsist now or in the future in any part of the world. This Agreement does not transfer to you any intellectual property owned by the Operator or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with the Operator. All trademarks,service marks, graphics and logos used in connection with the Mobile Application and Services, are trademarks or registered trademarks of the Operator or its licensors. Other trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services may be the trademarks of other third parties. Your use of theMobile Application and Services grants you no right or license to reproduce or otherwise use any of the Operator or third party trademarks.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Changes and amendments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "We reserve the right to modify this Agreement or its terms related to the Mobile Application and Services at anytime at our discretion. When we do, we will post a notification in the Mobile Application. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided.An updated version of this Agreement will be effective immediately upon the posting of the revised Agreement unless otherwise specified. Your continued use of the Mobile Application and Services after the effective date of the revised Agreement (or such other act specified at that time) will constitute your consent to those changes.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Acceptance of these terms",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing andusing the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abideby the terms of this Agreement, you are not authorized to access or use the Quickie Mobile Application and our Payment Services",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Contact us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "If you have any questions, concerns, or complaints regarding this Agreement, we encourage you to contact us at quickie@gmail.com",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Developers built the Quickie app as a Free app. This SERVICE is provided by developers at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use the Service.If you choose to use this Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that  collected is used for providing and improving the Service. Developers will not use or share your information with anyone except as described in this Privacy Policy.The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Quickie unless otherwise defined in this Privacy Policy.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Information Collection and Use",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to Quickie. The information that I request will be retained on your device and is not collected by me in any way.The app does use third-party services that may collect information used to identify you.Link to the privacy policy of third-party service providers used by the appGoogle Play Services",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Log Data",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "We want to inform you that whenever you use my Service, in a case of an error in the app it will collect data and information on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Cookies",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Service Providers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "This may employ third-party companies and individuals due to the following reasons:To facilitate our Service;To provide the Service on our behalf;To perform Service-related services; orTo assist us in analyzing how our Service is used.I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Security",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Links to Other Sites",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Changes to This Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.This policy is effective as of 2022-02-23",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact us at quickie@gmail.com.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
