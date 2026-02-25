/**
* Name: examplelink
* Based on the internal empty template. 
* Author: baptiste
* Tags: 
*/


model examplelink


global {
	
	
	int forceps_server_port;
	string forceps_server_ip; 
	string capsis_working_dir; 
	string forceps_setup_file_path;
	
	ForcepsClient forceps_client;
	
	// This is just an example based on a temporary setup file, make another one with proper values
	map<string, string> default_forceps_parameters <- [
		"siteFileName" :: "forceps.site",
		"speciesFileName" :: "forceps2.New_species",
		"defaultClimateFileName" :: "forceps.climate.Bern",
		"defaultClimateIsDaily" :: "false",
		"bareGround" :: "true",
		"bareGroundPatchN" :: "10",
		"bareGroundPatchArea" :: "1000",
		"inventory" :: "false",
		"inventoryFileName" :: "forceps.inv",
		"adaptiveMode" :: "false",
		"adaptiveReadSpeciesParametersInCompleteExport" :: "false",
		"adaptiveInputCompleteExport" :: "inputCompleteExport.adaptive",
		"adaptiveVarianceLevel" :: "ADAPTIVE_VARIANCE_LEVEL_LOW",
		"adaptiveTradeOffOption" :: "ADAPTIVE_MULTI_NORMAL_OPTION",
		"adaptiveInventoryPatchN" :: "50",
		"adaptiveInventoryPatchArea" :: "800",
		"adaptiveInitial_laSd" :: "0.03",
		"adaptiveInitial_drtolSd" :: "0.1",
		"adaptiveInitial_gSd" :: "5",
		"adaptiveExtraVariance_drtol" :: "0.03",
		"adaptiveExtraVariance_g" :: "5",
		"adaptive2Mode" :: "false",
		"adaptive2FileName" :: "forcepsAdaptive2.trait",
		"adaptiveConstantVarianceMode" :: "false",
		"adaptiveConstantVariance_laSd" :: "0.8",
		"adaptiveConstantVariance_gSd" :: "32",
		"adaptiveConstantVariance_drtolSd" :: "0.03",
		"adaptiveMultiNormalCorrelation_g_la" :: "0",
		"adaptiveMultiNormalCorrelation_drtol_g" :: "-0.5",
		"adaptiveMultiNormalCorrelation_la_drtol" :: "0",
		"adaptiveTreeReproductionWeight" :: "false",
		"adaptiveHeritability" :: "0.3",
		"regenerationForclimLike_withMigration" :: "false",
		"migrationFactor" :: "1",
		"initDate" :: "1950",
		"randomSeed" :: "98",
		"distProba" :: "0.005",
		"deathProbaCoef" :: "4.605",
		"slowGrowthProba" :: "0.368",
		"slowGrowthTime" :: "2",
		"potentialSpeciesList" :: "17",
		"crownLengthOption" :: "true",
		"crownLengthImpactOnGrowth" :: "true",
		"regenerationMaxTreesPerPatchOption" :: "false",
		"regenerationMaxTreesPerPatchNumber" :: "50",
		"regenerationMaxTreesPerPatchWithNTries" :: "false",
		"regenerationMaxTreesPerPatchNTries" :: "5",
		"regenerationSeedlingsPerPatchOption" :: "false",
		"regenerationSeedlingsPerPatchNumber" :: "100",
		"regenerationForclimLike" :: "true",
		"regenerationActualSpeciesOnly" :: "false",
		"regenerationActualSpeciesOnlyAtPatchLevel" :: "false",
		"regenerationConstraint" :: "true",
		"regenerationActualSpeciesOnlyAbundance" :: "false",
		"regenerationSpeciesContributionsBasedAbundance" :: "false",
		"establishmentProbabilityCoef" :: "0.1",
		"ppMothActivated" :: "false ",
		"ppMothRegionalPercentageOfInfestedTreesOption" :: "false",
		"ppMothRegionalPercentageOfInfestedTrees" :: "0.12",
		"variability" :: "false",
		"variabilityFileName" :: "forceps.fitnessVariability",
		"climaticFitness" :: "false",
		"fitnessImpactsGrowth" :: "false",
		"management" :: "false",
		"managementFileName" :: "forceps.management",
		"droughtStressOption" :: "FORCLIM_LIKE_DROUGHT_STRESS",
		"phenofitActivated" :: "false",
		"phenofitPath" :: "Phenology/",
		"leafLossImpactOnGrowthFactor" :: "0",
		"frostLeafLossImpactOnLAI" :: "false",
		"reproductiveSuccessImpactOnRege" :: "false",
		"canopyLayerThickness" :: "1",
		"crownA1ReversionFactor" :: "0",
		"variableAllometry" :: "false",
		"treeHeightFromInventory" :: "false",
		"conicalCanopyShadows" :: "false",
		"equilibriumInitialCanopy" :: "false",
		"equilibriumError" :: "0.01",
		"layeredCrownAndHeightPlasticityCalculation" :: "false",
		"speciesCrownShapeParameters" :: "false",
		"speciesSpecificLeafArea" :: "false",
		"densityDependentLightAttenuation" :: "false",
		"leafPhenologyImpactOnLightCompetition" :: "false",
		"leafPhenologyImpactOnLightCompetition_GDDweights" :: "false",
		"percentOfRainExclusion" :: "0 ",
		"deadWoodActivated" :: "true",
		"initialLitterBiomassInformation" :: "initialLitterBiomass(Phal(5000,40);Qile(3000,5))",
		"yassoActivated" :: "true",
		"yassoParametersFileName" :: "yassoParameters.txt",
		"yassoSpeciesFileName" :: "YassoSpeciesParameters.csv",
		"soilCarbonEquilibriumInitialization" :: "false",
		"soilCarbonInitializationInformation" :: "soilCarbonInitializationInformation(3000;1970;2020;0;5;50)",
		"canopyStructureMemory" :: "true",
		"microClimateActivated" :: "false",
		"activateTREMCalculator" :: "true",
		"sureauActivated" :: "false",
		"sureauSoilParametersFileName" :: "NA",
		"sureauExplicitScheme" :: "False",
		"sureauSmallTimeStep" :: "1200",
		"sureauTimeStep" :: "1",
		"sureauClassNbPerSpecies" :: "3",
		"sureauMortalityModule" :: "false",
		"sureauGrowthModule" :: "false",
		"sureau_drtolFromSMRI" :: "true",
		"sureauWritingFrequency" :: "3600",
		"yearToYearPLC" :: "false",
		"growthToCavitationRepairConversionFactor" :: "1",
		"droughtInducedDefoliation" :: "false",
		"droughtInducedDefoliationImpactOnGrowth" :: "false ",
		"droughtInducedDefoliationImpactOnLightCompetition" :: "false",
		"cavitationMortalityTresholdPercentage" :: "0",
		"plcMortalityDelayYear" :: "-1",
		"resetPLCAfterMortalityTest" :: "false ",
		"explicitRootLength" :: "false",
		"rootLengthPlasticity" :: "false",
		"sureauTrunkInterfaceAreaOption" :: "AGGREGATE_TRUNK_INTERFACE_AREA_OPTION",
		"cavitationReparationMethod" :: "GROWTH_BASED_ONLY",
		"rootDepthEquilibriumCalibration" :: "true",
		"rootDepthInitializationInformation" :: "rootDepthInitializationInformation()"
	];

	init{
		create ForcepsClient {
			forceps_client <- self;
		}
	}
	

	
}

species ForcepsClient skills:[network, thread]{
	
	// temporary
	// TODO: add a proper operator in gaml
	bool is_windows <- gama.info contains "Windows" const:true;
	
	// CONSTANTS
	string windows_capsis_script_name 	<- 'capsis.bat' const:true;
	string linux_capsis_script_name 	<- 'capsis.sh'  const:true;
	
	string forceps_server_addr <- forceps_server_ip + ':' + forceps_server_port update: forceps_server_ip + ':' + forceps_server_port;
	
	// This is an id that is auto-incremented at each command call, it is used to identify commands
	int command_id;
	
	list<int> simulate_commands_waiting_for_results;
	
	init {
		command_id <- 0;
		simulate_commands_waiting_for_results <- [];
	}
	
	// This initializes the capsis_working_dir and starts the thread that will initialize the forceps server
	action start_forceps_server {
		do run_thread;		
	}
	
	// This action starts the forceps_server
	// it is recommanded to use the start_forceps_server instead of calling it directly
	action thread_action {
		
		// check that capsis_working_dir is properly set
		if capsis_working_dir = nil or empty(capsis_working_dir) or ! folder_exists(capsis_working_dir){
			error "Cannot start forceps server because capsis_working_dir is not a folder: '" + capsis_working_dir + "'";
			return;						
		}

		string cmd <- '';
		// on windows we may need to change drive before anything
		if is_windows {
			string drive <- (capsis_working_dir split_with (':'))[0];
			cmd <- cmd + drive+": && ";
		}
		
		// we need to move to capsis_working_dir to execute the server command
		cmd <- cmd + 'cd ' + capsis_working_dir + ' && ';
		
		if ! is_windows {
			cmd <- cmd + 'sh ' + linux_capsis_script_name;
		}
		else{
			cmd <- cmd + windows_capsis_script_name;
		}
		
		// actually calling the capsis script to start forceps server
		cmd <- cmd + ' -p script forceps.maelia.TCPServer ' + forceps_server_port;
		let res <- command(cmd);
		write res;
		if ! empty(res) and ! (res contains "waiting on port: ") {
			error "Unable to start forceps server: " + res;
			return;
		}
	}
	
	action connect_to_forceps_server {
		do connect to:forceps_server_ip port:forceps_server_port protocol:"tcp_client" raw:true;
	}
	
	action send_stop{
		do send contents:"stopSystem\n" to:forceps_server_addr;
	}
	
	action generate_setup_file(string setup_file_path, map<string, string> forceps_parameters){
		// check that the path is legit ?
		// create the directories if needed ?
		// rewrite ?
		save concatenate(forceps_parameters.pairs collect (each.key + " = " + each.value + '\n')) 
				to:setup_file_path 
				format:"text"
				buffering: "no_buffering" // there can never be buffering else it might break the interaction loop
				;
	}
	
	// send a request to forceps to run a simulation following a setup file
	// This function is non-blocking and the execution of the simulation will continue before
	// the result is send back.
	// to fetch all the results use fetch_simulate
	// both parameters have to be absolute paths
	action send_simulate(string setup_file_path, string output_file_path) {
		// First we build the message to send
		// The command should look like this: 
		// simulate id=<id> absoluteSetupFile=<path/to/setup/file> absoluteResultFile=<path/to/res/file>
		command_id <- command_id + 1;
		write output_file_path;
		string command <- "simulate"
							+ " id=" + command_id 
							+ " absoluteSetupFile=" + setup_file_path
							+ " absoluteResultFile=" + output_file_path
							+"\n";
		write "sending command to forceps server: " + command;
		do send contents:command to:forceps_server_addr;
		simulate_commands_waiting_for_results <+ command_id;
	
	}
	
	action fetch_simulate {
		write "waiting for forceps server to send data..."; 

		// we have to read all the answers to all the simulate messages		
		loop while: length(simulate_commands_waiting_for_results) > 0 {
			loop while: !has_more_message()  { 
				do fetch_message_from_network;
			}
			//This second loop will only be reached once a message has been found into the agent's mailbox
			loop while: has_more_message() {
				message s <- fetch_message();
				write "received from server: " + s.contents;
				
				// we check the content
				list<string> params <- split_with(string(s.contents), ' ');
				if params[0] = "simulate" {
					int id <- int((params[1] split_with '=')[1]); 
					simulate_commands_waiting_for_results <- simulate_commands_waiting_for_results - id;
				}
			}	
		}
		write "all messages read";
	}
	
	
}


experiment test autorun:true{

	parameter "Capsis working directory" var:capsis_working_dir <- "D:\\capsis_svn";	
	parameter "Forceps server port" var:forceps_server_port <- 9123;
	parameter "Forceps server ip" var:forceps_server_ip <- "localhost";
	parameter "Forceps setup file" var:forceps_setup_file_path <- "D:\\capsis_svn\\data\\forceps\\maelia\\design\\forcepsBasic.setup"; // TODO: set another default value
	
	category name:"capsis" color:#darkseagreen expanded:true;
	
	user_command "Start forceps server" category:"capsis"{
		ask forceps_client{
			do start_forceps_server;
		}
	}
	
	user_command "Connect to forceps server" category:'capsis' {
		ask forceps_client{
			do connect_to_forceps_server;
		}
	}
	
	user_command "Send stop to forceps server" category:'capsis' {
		ask forceps_client{
			do send_stop;
		}
	}
	
	user_command "Send simulate to forceps server" category:'capsis' {
		ask forceps_client{			
			do send_simulate(forceps_setup_file_path, "C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file" + (command_id+1) + ".txt");
		}
	}
	
	
	user_command "Fetch simulate results from forceps server" category:'capsis' {
		ask forceps_client{			
			do fetch_simulate;
		}
	}
	
	
	user_command "Send two simulate one after another" category:'capsis' {
		ask forceps_client {			
			do send_simulate(forceps_setup_file_path, 'C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file1.txt');
			do fetch_simulate;

			do send_simulate(forceps_setup_file_path, 'C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file2.txt');
			do fetch_simulate;			
		}
	}
	
	user_command "Send three parallel simulate to forceps server and wait for answers" category:'capsis' {
		ask forceps_client{			
			do send_simulate(forceps_setup_file_path, 'C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file1.txt');
			do send_simulate(forceps_setup_file_path, 'C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file2.txt');
			do send_simulate(forceps_setup_file_path, 'C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file3.txt');
			do fetch_simulate;
			
			write "reading the last file written...";
			file f <- file('C:\\Users\\baptiste\\gama-capsis\\capsis-tools\\outputs\\output_file3.txt');
			loop el over: f {
				write el;
			}
		}
	}
		
	user_command "Write default forceps setup file" category:'capsis' {
		ask forceps_client{
			do generate_setup_file(forceps_setup_file_path, default_forceps_parameters);
		}
	}
	
}



