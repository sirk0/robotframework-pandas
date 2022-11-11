import pandas as pd
from robot.api import logger


class PandasLibrary:
    """Robot Framework Pandas Library"""

    ROBOT_LIBRARY_SCOPE = "GLOBAL"

    @staticmethod
    def convert_to_series(*args, **kwargs) -> pd.Series:
        """Convert to Series"""
        result = pd.Series(*args, **kwargs)
        logger.info(result)
        return result
