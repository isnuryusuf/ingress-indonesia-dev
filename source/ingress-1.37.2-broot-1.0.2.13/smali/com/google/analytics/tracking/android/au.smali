.class final Lcom/google/analytics/tracking/android/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/analytics/tracking/android/as;

.field private static final b:Lcom/google/analytics/tracking/android/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/analytics/tracking/android/av;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/av;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/au;->a:Lcom/google/analytics/tracking/android/as;

    .line 20
    new-instance v0, Lcom/google/analytics/tracking/android/aw;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/aw;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/au;->b:Lcom/google/analytics/tracking/android/as;

    return-void
.end method

.method public static a(Lcom/google/analytics/tracking/android/ar;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 34
    const-string/jumbo v0, "apiVersion"

    const-string/jumbo v1, "v"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 35
    const-string/jumbo v0, "libraryVersion"

    const-string/jumbo v1, "_v"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 36
    const-string/jumbo v0, "anonymizeIp"

    const-string/jumbo v1, "aip"

    const-string/jumbo v2, "0"

    sget-object v3, Lcom/google/analytics/tracking/android/au;->a:Lcom/google/analytics/tracking/android/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 37
    const-string/jumbo v0, "trackingId"

    const-string/jumbo v1, "tid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 38
    const-string/jumbo v0, "hitType"

    const-string/jumbo v1, "t"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 39
    const-string/jumbo v0, "sessionControl"

    const-string/jumbo v1, "sc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 40
    const-string/jumbo v0, "adSenseAdMobHitId"

    const-string/jumbo v1, "a"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 41
    const-string/jumbo v0, "usage"

    const-string/jumbo v1, "_u"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 44
    const-string/jumbo v0, "title"

    const-string/jumbo v1, "dt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 45
    const-string/jumbo v0, "referrer"

    const-string/jumbo v1, "dr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 46
    const-string/jumbo v0, "language"

    const-string/jumbo v1, "ul"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 47
    const-string/jumbo v0, "encoding"

    const-string/jumbo v1, "de"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 48
    const-string/jumbo v0, "page"

    const-string/jumbo v1, "dp"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 50
    const-string/jumbo v0, "screenColors"

    const-string/jumbo v1, "sd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 51
    const-string/jumbo v0, "screenResolution"

    const-string/jumbo v1, "sr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 52
    const-string/jumbo v0, "viewportSize"

    const-string/jumbo v1, "vp"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 53
    const-string/jumbo v0, "javaEnabled"

    const-string/jumbo v1, "je"

    const-string/jumbo v2, "1"

    sget-object v3, Lcom/google/analytics/tracking/android/au;->a:Lcom/google/analytics/tracking/android/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 54
    const-string/jumbo v0, "flashVersion"

    const-string/jumbo v1, "fl"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 56
    const-string/jumbo v0, "clientId"

    const-string/jumbo v1, "cid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 59
    const-string/jumbo v0, "campaignName"

    const-string/jumbo v1, "cn"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 60
    const-string/jumbo v0, "campaignSource"

    const-string/jumbo v1, "cs"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 61
    const-string/jumbo v0, "campaignMedium"

    const-string/jumbo v1, "cm"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 62
    const-string/jumbo v0, "campaignKeyword"

    const-string/jumbo v1, "ck"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 63
    const-string/jumbo v0, "campaignContent"

    const-string/jumbo v1, "cc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 64
    const-string/jumbo v0, "campaignId"

    const-string/jumbo v1, "ci"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 65
    const-string/jumbo v0, "gclid"

    const-string/jumbo v1, "gclid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 66
    const-string/jumbo v0, "dclid"

    const-string/jumbo v1, "dclid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 67
    const-string/jumbo v0, "gmob_t"

    const-string/jumbo v1, "gmob_t"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 70
    const-string/jumbo v0, "eventCategory"

    const-string/jumbo v1, "ec"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 71
    const-string/jumbo v0, "eventAction"

    const-string/jumbo v1, "ea"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 72
    const-string/jumbo v0, "eventLabel"

    const-string/jumbo v1, "el"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 73
    const-string/jumbo v0, "eventValue"

    const-string/jumbo v1, "ev"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 74
    const-string/jumbo v0, "nonInteraction"

    const-string/jumbo v1, "ni"

    const-string/jumbo v2, "0"

    sget-object v3, Lcom/google/analytics/tracking/android/au;->a:Lcom/google/analytics/tracking/android/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 77
    const-string/jumbo v0, "socialNetwork"

    const-string/jumbo v1, "sn"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 78
    const-string/jumbo v0, "socialAction"

    const-string/jumbo v1, "sa"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 79
    const-string/jumbo v0, "socialTarget"

    const-string/jumbo v1, "st"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 82
    const-string/jumbo v0, "appName"

    const-string/jumbo v1, "an"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 83
    const-string/jumbo v0, "appVersion"

    const-string/jumbo v1, "av"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 86
    const-string/jumbo v0, "description"

    const-string/jumbo v1, "cd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 88
    const-string/jumbo v0, "appId"

    const-string/jumbo v1, "aid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 89
    const-string/jumbo v0, "appInstallerId"

    const-string/jumbo v1, "aiid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 92
    const-string/jumbo v0, "transactionId"

    const-string/jumbo v1, "ti"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 93
    const-string/jumbo v0, "transactionAffiliation"

    const-string/jumbo v1, "ta"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 94
    const-string/jumbo v0, "transactionShipping"

    const-string/jumbo v1, "ts"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 95
    const-string/jumbo v0, "transactionTotal"

    const-string/jumbo v1, "tr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 96
    const-string/jumbo v0, "transactionTax"

    const-string/jumbo v1, "tt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 97
    const-string/jumbo v0, "currencyCode"

    const-string/jumbo v1, "cu"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 100
    const-string/jumbo v0, "itemPrice"

    const-string/jumbo v1, "ip"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 101
    const-string/jumbo v0, "itemCode"

    const-string/jumbo v1, "ic"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 102
    const-string/jumbo v0, "itemName"

    const-string/jumbo v1, "in"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 103
    const-string/jumbo v0, "itemCategory"

    const-string/jumbo v1, "iv"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 104
    const-string/jumbo v0, "itemQuantity"

    const-string/jumbo v1, "iq"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 107
    const-string/jumbo v0, "exDescription"

    const-string/jumbo v1, "exd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 108
    const-string/jumbo v0, "exFatal"

    const-string/jumbo v1, "exf"

    const-string/jumbo v2, "1"

    sget-object v3, Lcom/google/analytics/tracking/android/au;->a:Lcom/google/analytics/tracking/android/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 111
    const-string/jumbo v0, "timingVar"

    const-string/jumbo v1, "utv"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 112
    const-string/jumbo v0, "timingValue"

    const-string/jumbo v1, "utt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 113
    const-string/jumbo v0, "timingCategory"

    const-string/jumbo v1, "utc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 114
    const-string/jumbo v0, "timingLabel"

    const-string/jumbo v1, "utl"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 117
    const-string/jumbo v0, "sampleRate"

    const-string/jumbo v1, "sf"

    const-string/jumbo v2, "100"

    sget-object v3, Lcom/google/analytics/tracking/android/au;->b:Lcom/google/analytics/tracking/android/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 118
    const-string/jumbo v0, "hitTime"

    const-string/jumbo v1, "ht"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 122
    const-string/jumbo v0, "customDimension"

    const-string/jumbo v1, "cd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 123
    const-string/jumbo v0, "customMetric"

    const-string/jumbo v1, "cm"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 124
    const-string/jumbo v0, "contentGrouping"

    const-string/jumbo v1, "cg"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/as;)V

    .line 125
    return-void
.end method
