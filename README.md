# PWRChain-Validator-Utils
Collection of scripts to manage PWR Chain validator node on Ubuntu


# **How to use**

## Clone the repo

```
git clone https://github.com/vdallco/PWRChain-Validator-Utils.git
```

## Make setup.sh executable and run it

```
sudo chmod 700 setup.sh && sudo ./setup.sh
```

## Run validator manually

### - Auto IP mode (gets IP address from ipinfo.io/ip)

```
sudo ./runValidator.sh
```


### - Custom IP mode (user enters IP address as command line argument)

```
sudo ./runValidator.sh 0.0.0.0
```

## Run validator automatically on startup

```
sudo ./runAtStartup.sh
```

## Disable auto-run at startup

```
sudo ./runAtStartup.sh disable
```

## View validator stats (wallet address, start date/time, etc)

```
sudo ./validatorStats.sh
```

## Kill validator

```
sudo ./killValidator.sh
```