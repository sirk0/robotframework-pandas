import pandas as pd
from robot.api import logger


class PandasLibrary:
    @staticmethod
    def convert_to_series(*args, **kwargs) -> pd.Series:
        result = pd.Series(*args, **kwargs)
        logger.info(result)
        return result
