.class public final Lcom/nianticproject/ingress/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/nianticproject/ingress/g/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/g/b;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/g/e;->a:Lcom/nianticproject/ingress/g/b;

    return-void
.end method

.method public static a(Ljava/lang/String;[B)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, -0x1

    .line 88
    if-nez p0, :cond_1

    .line 89
    sget-object v1, Lcom/nianticproject/ingress/g/e;->a:Lcom/nianticproject/ingress/g/b;

    const-string/jumbo v1, "Unexpected null post url"

    invoke-static {v1}, Lcom/nianticproject/ingress/g/b;->a(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-nez p1, :cond_2

    .line 91
    sget-object v1, Lcom/nianticproject/ingress/g/e;->a:Lcom/nianticproject/ingress/g/b;

    const-string/jumbo v1, "Unexpected null post data"

    invoke-static {v1}, Lcom/nianticproject/ingress/g/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 94
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/g/e;->b(Ljava/lang/String;[B)I

    move-result v0

    .line 95
    div-int/lit8 v2, v0, 0x64

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    div-int/lit8 v2, v0, 0x64

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 57
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "https"

    .line 60
    :cond_0
    const v1, 0x7f090017

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    .line 63
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Lcom/google/h/a/a/c;)[B
    .locals 2
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/google/h/a/a/d;

    invoke-direct {v0, p0}, Lcom/google/h/a/a/d;-><init>(Lcom/google/h/a/a/c;)V

    .line 115
    invoke-virtual {v0}, Lcom/google/h/a/a/d;->a()Lcom/google/c/a/a/b/a;

    move-result-object v0

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->a(Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/nianticproject/ingress/g/e;->a:Lcom/nianticproject/ingress/g/b;

    const-string/jumbo v1, "Unexpected exception in report serialization."

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/g/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/h/a/a/c;Landroid/content/Context;)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 72
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/google/h/a/a/c;->q:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/google/h/a/a/c;->r:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/a/c;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/a/c;->t:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/h/a/a/c;->t:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/h/a/a/c;->t:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/h/a/a/c;->v:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/h/a/a/c;->b:I

    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".DEV"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/a/c;->c:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/google/h/a/a/c;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/a/c;->u:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/a/c;->v:Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/nianticproject/ingress/g/e;->a(Lcom/google/h/a/a/c;)[B

    move-result-object v0

    .line 74
    return-object v0

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/h/a/a/c;->c:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;[B)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x4e20

    .line 141
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 143
    const-string/jumbo v1, "Content-type"

    const-string/jumbo v2, "application/x-protobuf"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 150
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 151
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 152
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 156
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    :goto_0
    sget-object v1, Lcom/nianticproject/ingress/g/e;->a:Lcom/nianticproject/ingress/g/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Report posted.  statusCode("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/g/b;->b(Ljava/lang/String;)V

    .line 165
    return v0

    .line 161
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
