{
	"contents": {
		"f3c8be35-104b-46f8-a88d-3343dc7375ae": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "performanceappraisal",
			"subject": "Performance Appraisal Approval for ${context.employeeName}",
			"businessKey": "${context.requestId}",
			"name": "PerformanceAppraisal",
			"documentation": "Performance Appraisal Process",
			"lastIds": "aaf349f1-28a5-4e1b-8be2-ccf8db0ffe2a",
			"events": {
				"0df9e5a6-f7db-4d76-b24d-6f7c1612c719": {
					"name": "Start"
				},
				"262cbd54-7d0e-4ca1-9587-d61cc6f27d44": {
					"name": "End"
				}
			},
			"activities": {
				"f30133bf-17a5-42ff-a90c-450996f5af62": {
					"name": "Performance Appraisal Task"
				}
			},
			"sequenceFlows": {
				"1ef752ab-3905-4f83-a5b9-02f1b62dee10": {
					"name": "SequenceFlow1"
				},
				"d4174a6a-6b82-4176-bdcd-4d72f10f17bd": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"7fe139e8-85c8-4484-a60c-63c1614fe7c1": {}
			}
		},
		"0df9e5a6-f7db-4d76-b24d-6f7c1612c719": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start",
			"sampleContextRefs": {
				"0528c9f0-7994-4496-9898-3a185879933e": {}
			}
		},
		"262cbd54-7d0e-4ca1-9587-d61cc6f27d44": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"f30133bf-17a5-42ff-a90c-450996f5af62": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Performance Appraisal for ${context.employeeName}",
			"description": "Approval of Performance Appraisal Approval for ${context.employeeName} for Year ${context.year}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P000057",
			"formReference": "/forms/PerformanceAppraisal/PerformanceAppraisal.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "performanceappraisal"
			}, {
				"key": "formRevision",
				"value": "dev"
			}],
			"customAttributes": [{
				"id": "Goals",
				"label": "Goals",
				"type": "string",
				"value": "${context.Goals}"
			}, {
				"id": "year",
				"label": "Year",
				"type": "string",
				"value": "${context.year}"
			}, {
				"id": "employeeDesignation",
				"label": "Employee Designation",
				"type": "string",
				"value": "${context.employeeDesignation}"
			}, {
				"id": "employeeName",
				"label": "Employee Name",
				"type": "string",
				"value": "${context.employeeName}"
			}, {
				"id": "employeeId",
				"label": "Employee Id",
				"type": "string",
				"value": "${context.employeeId}"
			}, {
				"id": "requestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.requestId}"
			}],
			"id": "usertask1",
			"name": "Performance Appraisal Task",
			"dueDateRef": "da433e81-2cf4-4852-9e3c-a79f4ed1431d"
		},
		"1ef752ab-3905-4f83-a5b9-02f1b62dee10": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "0df9e5a6-f7db-4d76-b24d-6f7c1612c719",
			"targetRef": "f30133bf-17a5-42ff-a90c-450996f5af62"
		},
		"d4174a6a-6b82-4176-bdcd-4d72f10f17bd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "f30133bf-17a5-42ff-a90c-450996f5af62",
			"targetRef": "262cbd54-7d0e-4ca1-9587-d61cc6f27d44"
		},
		"7fe139e8-85c8-4484-a60c-63c1614fe7c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"40e3a550-e3b5-46d8-bafb-22edd563b87b": {},
				"716129f7-0415-47dd-ac23-5e0ef166d8ab": {},
				"44fb5d10-5be5-4005-9bcc-53581e5a9adf": {},
				"06a268e2-35ca-434e-86b9-e453352876b0": {},
				"0b2d81ed-4e31-4b8d-bf2e-7215f6e8cca4": {}
			}
		},
		"0528c9f0-7994-4496-9898-3a185879933e": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/PerformanceAppraisal/PerformanceAppraisalInitalContext.json",
			"id": "default-start-context"
		},
		"40e3a550-e3b5-46d8-bafb-22edd563b87b": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "0df9e5a6-f7db-4d76-b24d-6f7c1612c719"
		},
		"716129f7-0415-47dd-ac23-5e0ef166d8ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 556,
			"y": 352,
			"width": 35,
			"height": 35,
			"object": "262cbd54-7d0e-4ca1-9587-d61cc6f27d44"
		},
		"44fb5d10-5be5-4005-9bcc-53581e5a9adf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 213.3707275390625,116 213.3707275390625,242.75 344.241455078125,242.75",
			"sourceSymbol": "40e3a550-e3b5-46d8-bafb-22edd563b87b",
			"targetSymbol": "06a268e2-35ca-434e-86b9-e453352876b0",
			"object": "1ef752ab-3905-4f83-a5b9-02f1b62dee10"
		},
		"06a268e2-35ca-434e-86b9-e453352876b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 294.241455078125,
			"y": 212.75,
			"width": 100,
			"height": 60,
			"object": "f30133bf-17a5-42ff-a90c-450996f5af62"
		},
		"0b2d81ed-4e31-4b8d-bf2e-7215f6e8cca4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344.241455078125,242.75 475.3707275390625,242.75 475.3707275390625,369.5 573.5,369.5",
			"sourceSymbol": "06a268e2-35ca-434e-86b9-e453352876b0",
			"targetSymbol": "716129f7-0415-47dd-ac23-5e0ef166d8ab",
			"object": "d4174a6a-6b82-4176-bdcd-4d72f10f17bd"
		},
		"aaf349f1-28a5-4e1b-8be2-ccf8db0ffe2a": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"da433e81-2cf4-4852-9e3c-a79f4ed1431d": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P5D",
			"id": "timereventdefinition1"
		}
	}
}