.class public Lcom/nianticproject/ingress/shared/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/nianticproject/ingress/shared/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nianticproject/ingress/shared/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 461
    :try_start_0
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/shared/a;->a([BI)[B

    move-result-object v1

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/nianticproject/ingress/shared/c;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/shared/c;-><init>([B)V

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/shared/c;->a([BI)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v2, Lcom/nianticproject/ingress/shared/c;->b:I

    iget-object v1, v2, Lcom/nianticproject/ingress/shared/c;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/nianticproject/ingress/shared/c;->a:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v2, Lcom/nianticproject/ingress/shared/c;->b:I

    new-array v0, v0, [B

    iget-object v1, v2, Lcom/nianticproject/ingress/shared/c;->a:[B

    iget v2, v2, Lcom/nianticproject/ingress/shared/c;->b:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 516
    :try_start_0
    const-string/jumbo v0, "Base64.encode"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/nianticproject/ingress/shared/d;

    invoke-direct {v2}, Lcom/nianticproject/ingress/shared/d;-><init>()V

    .line 520
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x4

    .line 523
    iget-boolean v0, v2, Lcom/nianticproject/ingress/shared/d;->d:Z

    if-eqz v0, :cond_1

    .line 524
    rem-int/lit8 v0, p1, 0x3

    if-lez v0, :cond_0

    .line 525
    add-int/lit8 v1, v1, 0x4

    .line 536
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, v2, Lcom/nianticproject/ingress/shared/d;->e:Z

    if-eqz v0, :cond_4

    if-lez p1, :cond_4

    .line 537
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v3, v0, 0x1

    iget-boolean v0, v2, Lcom/nianticproject/ingress/shared/d;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 541
    :goto_2
    new-array v1, v0, [B

    iput-object v1, v2, Lcom/nianticproject/ingress/shared/d;->a:[B

    .line 542
    invoke-virtual {v2, p0, p1}, Lcom/nianticproject/ingress/shared/d;->a([BI)Z

    .line 544
    sget-boolean v1, Lcom/nianticproject/ingress/shared/a;->a:Z

    if-nez v1, :cond_3

    iget v1, v2, Lcom/nianticproject/ingress/shared/d;->b:I

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 528
    :cond_1
    :try_start_1
    rem-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 531
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 537
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 546
    :cond_3
    iget-object v0, v2, Lcom/nianticproject/ingress/shared/d;->a:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b([B)[B
    .locals 1
    .parameter

    .prologue
    .line 499
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/shared/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method
