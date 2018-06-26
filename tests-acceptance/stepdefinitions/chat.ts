import { defineSupportCode } from 'cucumber';
import { browser, $, element, ElementArrayFinder, by } from 'protractor';
let chai = require('chai').use(require('chai-as-promised'));
let expect = chai.expect;

let sleep = (ms => new Promise(resolve => setTimeout(resolve, ms)));

defineSupportCode(function ({ Given, When, Then }) {
	//codigo dos testes
	Given(/^eu estou na página inicial do Bookie Talkie$/, async () => {
		await browser.get("http://localhost:4200/");
		await expect(browser.getTitle()).to.eventually.equal('BtGui');
	})
	
	Given(/^eu estou com conexão a internet$/, async () => {
		await expect(browser.onLine);
	})
	
	Given(/^eu tenho mensagens ainda não lidas$/, async () => {
		
	})
	
	When(/^eu seleciono a opção “(\w*)”$/, async (action) => {
		await element(by.buttonText(action)).click();
	})
	
	Then(/^eu vejo uma mensagem informando que “(\w*)”$/, async (mensagem) => {
		var msg = element(by.name('msg-chat'));
		await msg;
		await msg.then(elem => expect(Promise.resolve(elem.getText())).to.eventually.equal(mensagem))
	})
	
	Given(/^$/, async (eu estou sem conexão a internet) => {
		await expect(!browser.onLine)
	})
})