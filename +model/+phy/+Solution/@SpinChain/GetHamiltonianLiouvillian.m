function [hami, liou]=GetHamiltonianLiouvillian(obj, spin_collection)
    import model.phy.QuantumOperator.SpinOperator.Hamiltonian
    import model.phy.QuantumOperator.MatrixStrategy.FromKronProd
    import model.phy.SpinInteraction.SpinChainInteraction.OnSiteEnergy
    import model.phy.SpinInteraction.SpinChainInteraction.DQTInteraction
    
    on_site_para.interaction=obj.parameters.onSite;
    dqt_para.interaction=obj.parameters.dqtInt;

    strategy=FromKronProd();
    hami=Hamiltonian(spin_collection, strategy);
    hami.addInteraction( OnSiteEnergy(spin_collection, on_site_para));
    hami.addInteraction( DQTInteraction(spin_collection, dqt_para));
    hami.generate_matrix();

    if strcmp(obj.parameters.InitialStateType, 'MixedState')
        liou=hami.circleC();
    else
        liou=[];
    end
end