<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="https://rdws.rd.go.th/serviceRD3/vatserviceRD3" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" targetNamespace="https://rdws.rd.go.th/serviceRD3/vatserviceRD3">
<wsdl:types>
<s:schema elementFormDefault="qualified" targetNamespace="https://rdws.rd.go.th/serviceRD3/vatserviceRD3">
<s:element name="Service">
<s:complexType>
<s:sequence>
<s:element minOccurs="0" maxOccurs="1" name="username" type="s:string"/>
<s:element minOccurs="0" maxOccurs="1" name="password" type="s:string"/>
<s:element minOccurs="0" maxOccurs="1" name="TIN" type="s:string"/>
<s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string"/>
<s:element minOccurs="1" maxOccurs="1" name="ProvinceCode" type="s:int"/>
<s:element minOccurs="1" maxOccurs="1" name="BranchNumber" type="s:int"/>
<s:element minOccurs="1" maxOccurs="1" name="AmphurCode" type="s:int"/>
</s:sequence>
</s:complexType>
</s:element>
<s:element name="ServiceResponse">
<s:complexType>
<s:sequence>
<s:element minOccurs="0" maxOccurs="1" name="ServiceResult" type="tns:vat"/>
</s:sequence>
</s:complexType>
</s:element>
<s:complexType name="vat">
<s:sequence>
<s:element minOccurs="0" maxOccurs="1" name="vNID" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vtin" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vtitleName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vSurname" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vBranchTitleName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vBranchName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vBranchNumber" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vBuildingName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vFloorNumber" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vVillageName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vRoomNumber" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vHouseNumber" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vMooNumber" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vSoiName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vStreetName" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vThambol" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vAmphur" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vProvince" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vPostCode" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vBusinessFirstDate" type="tns:ArrayOfAnyType"/>
<s:element minOccurs="0" maxOccurs="1" name="vmsgerr" type="tns:ArrayOfAnyType"/>
</s:sequence>
</s:complexType>
<s:complexType name="ArrayOfAnyType">
<s:sequence>
<s:element minOccurs="0" maxOccurs="unbounded" name="anyType" nillable="true"/>
</s:sequence>
</s:complexType>
<s:element name="ServiceArr">
<s:complexType>
<s:sequence>
<s:element minOccurs="0" maxOccurs="1" name="username" type="s:string"/>
<s:element minOccurs="0" maxOccurs="1" name="password" type="s:string"/>
<s:element minOccurs="0" maxOccurs="1" name="TINs" type="tns:ArrayOfString"/>
</s:sequence>
</s:complexType>
</s:element>
<s:complexType name="ArrayOfString">
<s:sequence>
<s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string"/>
</s:sequence>
</s:complexType>
<s:element name="ServiceArrResponse">
<s:complexType>
<s:sequence>
<s:element minOccurs="0" maxOccurs="1" name="ServiceArrResult" type="tns:vat"/>
</s:sequence>
</s:complexType>
</s:element>
</s:schema>
</wsdl:types>
<wsdl:message name="ServiceSoapIn">
<wsdl:part name="parameters" element="tns:Service"/>
</wsdl:message>
<wsdl:message name="ServiceSoapOut">
<wsdl:part name="parameters" element="tns:ServiceResponse"/>
</wsdl:message>
<wsdl:message name="ServiceArrSoapIn">
<wsdl:part name="parameters" element="tns:ServiceArr"/>
</wsdl:message>
<wsdl:message name="ServiceArrSoapOut">
<wsdl:part name="parameters" element="tns:ServiceArrResponse"/>
</wsdl:message>
<wsdl:portType name="vatserviceRD3Soap">
<wsdl:operation name="Service">
<wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">VAT</wsdl:documentation>
<wsdl:input message="tns:ServiceSoapIn"/>
<wsdl:output message="tns:ServiceSoapOut"/>
</wsdl:operation>
<wsdl:operation name="ServiceArr">
<wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">VAT TIN Array</wsdl:documentation>
<wsdl:input message="tns:ServiceArrSoapIn"/>
<wsdl:output message="tns:ServiceArrSoapOut"/>
</wsdl:operation>
</wsdl:portType>
<wsdl:binding name="vatserviceRD3Soap" type="tns:vatserviceRD3Soap">
<soap:binding transport="http://schemas.xmlsoap.org/soap/http"/>
<wsdl:operation name="Service">
<soap:operation soapAction="https://rdws.rd.go.th/serviceRD3/vatserviceRD3/Service" style="document"/>
<wsdl:input>
<soap:body use="literal"/>
</wsdl:input>
<wsdl:output>
<soap:body use="literal"/>
</wsdl:output>
</wsdl:operation>
<wsdl:operation name="ServiceArr">
<soap:operation soapAction="https://rdws.rd.go.th/serviceRD3/vatserviceRD3/ServiceArr" style="document"/>
<wsdl:input>
<soap:body use="literal"/>
</wsdl:input>
<wsdl:output>
<soap:body use="literal"/>
</wsdl:output>
</wsdl:operation>
</wsdl:binding>
<wsdl:service name="vatserviceRD3">
<wsdl:port name="vatserviceRD3Soap" binding="tns:vatserviceRD3Soap">
<soap:address location="https://rdws.rd.go.th/serviceRD3/vatserviceRD3.asmx"/>
</wsdl:port>
</wsdl:service>
</wsdl:definitions>