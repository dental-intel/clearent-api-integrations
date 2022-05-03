from pprint import pprint

import ClearentTransactionsApi
from ClearentTransactionsApi.api import transactions_api

configuration = ClearentTransactionsApi.Configuration(
    host="https://gateway-sb.clearent.net"
)
configuration.api_key["ApiKeyAuth"] = "3b5f0e3fc5924ddda5f780b19e83d17e"

with ClearentTransactionsApi.ApiClient(configuration) as api_client:
    api_instance = transactions_api.TransactionsApi(api_client)
    try:
        api_response = api_instance.search_transactions()
        pprint(api_response)
    except ClearentTransactionsApi.ApiException as e:
        print("Exception when calling TransactionsApi->search_transactions: %s\n" % e)
    except Exception as e:
        print("Exception: %s\n" % e)
