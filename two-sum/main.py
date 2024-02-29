from typing import List

def twoSum(self, nums: List[int], target: int) -> List[int]:
    
    answer_list = []
    
    for i in range(len(nums)):
        for j in range(i+1,len(nums)):
            if(nums[i]+nums[j]==target):
                answer_list.extend([i,j])
                break
        if len(answer_list)!=0:
            break
    
    return answer_list



#if __name__=="__main__":
#    print(twoSum(None, [3,3],6))