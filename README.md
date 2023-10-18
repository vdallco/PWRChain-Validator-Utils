# PWRChain-Validator-Utils
Collection of scripts to manage PWR Chain validator node


# **How to use**

## Clone the repo

```
git clone https://github.com/vdallco/PWRChain-Validator-Utils.git
```

## Make scripts executable

```
sudo chmod 700 runValidator.sh && sudo chmod 700 killValidator.sh
```

## Run validator

### - Auto IP mode (gets IP address from ipinfo.io/ip)

```
sudo ./runValidator.sh
```


### - Custom IP mode (user enters IP address as command line argument)

```
sudo ./runValidator.sh 0.0.0.0
```


## Kill validator

```
sudo ./killValidator.sh
```