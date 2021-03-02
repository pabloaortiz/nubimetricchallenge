using NUnit.Framework;
using RestSharp;
using System.Collections.Generic;

namespace Challenge.Test
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void TestPaisAR()
        {
            RestClient cliente = new RestClient("https://localhost:44378/Api/Paises/AR");
            RestRequest request = new RestRequest(Method.GET);
            var response = cliente.Execute<List<object>>(request);
            if (response.IsSuccessful)
                Assert.Pass();
            else
                Assert.Fail();
        }

        [Test]
        public void TestPaisBR()
        {
            RestClient cliente = new RestClient("https://localhost:44378/Api/Paises/BR");
            RestRequest request = new RestRequest(Method.GET);
            var response = cliente.Execute<List<object>>(request);
            if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                Assert.Pass();
            else
                Assert.Fail();
        }

        [Test]
        public void TestPaisCO()
        {
            RestClient cliente = new RestClient("https://localhost:44378/Api/Paises/CO");
            RestRequest request = new RestRequest(Method.GET);
            var response = cliente.Execute<List<object>>(request);
            if (response.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                Assert.Pass();
            else
                Assert.Fail();
        }
    }
}