true=1
false=0

isNewBranch()
{   
    local logQuery=$(git log --all --not $(git rev-list --no-walk --exclude=refs/heads/$(getBranchName) --exclude=HEAD --all))  
        if [ -z $logQuery ]; then 
	        echo $true
		    else
		            echo $false
			        fi  
				}

				getBranchName()
				{
				    echo $(git rev-parse --abbrev-ref HEAD)
				 }

				echo "hello" 
