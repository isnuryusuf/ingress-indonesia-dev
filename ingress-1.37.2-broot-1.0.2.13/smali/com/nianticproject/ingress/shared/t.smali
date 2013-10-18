.class public final Lcom/nianticproject/ingress/shared/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[J

.field public static b:I

.field private static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/nianticproject/ingress/shared/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/t;->c:Ljava/util/logging/Logger;

    .line 44
    const/16 v0, 0x25

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/nianticproject/ingress/shared/t;->b:I

    return-void

    .line 44
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x46t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x94t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xb3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf0t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x11t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf0t 0x4ft 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x8et 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf0t 0xcct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xbt 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf0t 0x49t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xbft 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x34t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa9t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x1et 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x7et 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x68t 0x6t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x53t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x3dt 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x27t 0x9t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xfct 0xat 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xd1t 0xct 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa6t 0xet 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x7at 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x4ft 0x12t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-static {p0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    .line 123
    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static a(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 140
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 141
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 142
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    aget-wide v2, v0, v1

    .line 143
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    .line 144
    return v1

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Should not be able to iterate beyond the end of the AP table. end value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nianticproject/ingress/shared/t;->a:[J

    sget-object v3, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") should be Long.MAX_VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    return v0
.end method

.method public static b(J)I
    .locals 2
    .parameter

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 228
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/shared/t;->a(J)I

    move-result v0

    .line 229
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)J
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-lez p0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 182
    if-lez p0, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    add-int/lit8 v0, p0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 183
    sget-object v1, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 184
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v0, v0

    .line 186
    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/shared/t;->a:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    return-wide v0

    :cond_1
    move v0, v2

    .line 181
    goto :goto_0

    :cond_2
    move v1, v2

    .line 182
    goto :goto_1
.end method

.method public static c(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-lez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 206
    sget-object v0, Lcom/nianticproject/ingress/shared/t;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 211
    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    .line 212
    return v0

    :cond_0
    move v0, v2

    .line 205
    goto :goto_0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_1
.end method
