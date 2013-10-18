.class final enum Lcom/nianticproject/ingress/l/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/l/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/l/y;

.field public static final enum b:Lcom/nianticproject/ingress/l/y;

.field public static final enum c:Lcom/nianticproject/ingress/l/y;

.field public static final enum d:Lcom/nianticproject/ingress/l/y;

.field public static final enum e:Lcom/nianticproject/ingress/l/y;

.field public static final enum f:Lcom/nianticproject/ingress/l/y;

.field private static final synthetic g:[Lcom/nianticproject/ingress/l/y;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "FUSED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->a:Lcom/nianticproject/ingress/l/y;

    .line 289
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "PARTICLE_FILTER"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->b:Lcom/nianticproject/ingress/l/y;

    .line 290
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "GPS"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->c:Lcom/nianticproject/ingress/l/y;

    .line 291
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "NET_WIFI"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->d:Lcom/nianticproject/ingress/l/y;

    .line 292
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "NET_CELL"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->e:Lcom/nianticproject/ingress/l/y;

    .line 293
    new-instance v0, Lcom/nianticproject/ingress/l/y;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/l/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/l/y;->f:Lcom/nianticproject/ingress/l/y;

    .line 286
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/l/y;

    sget-object v1, Lcom/nianticproject/ingress/l/y;->a:Lcom/nianticproject/ingress/l/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/l/y;->b:Lcom/nianticproject/ingress/l/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/l/y;->c:Lcom/nianticproject/ingress/l/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/l/y;->d:Lcom/nianticproject/ingress/l/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/l/y;->e:Lcom/nianticproject/ingress/l/y;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/l/y;->f:Lcom/nianticproject/ingress/l/y;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/l/y;->g:[Lcom/nianticproject/ingress/l/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;
    .locals 1
    .parameter

    .prologue
    .line 297
    const-string/jumbo v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/nianticproject/ingress/l/y;->a:Lcom/nianticproject/ingress/l/y;

    .line 308
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lcom/nianticproject/ingress/l/y;->c:Lcom/nianticproject/ingress/l/y;

    goto :goto_0

    .line 301
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/l/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    sget-object v0, Lcom/nianticproject/ingress/l/y;->d:Lcom/nianticproject/ingress/l/y;

    goto :goto_0

    .line 303
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/l/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    sget-object v0, Lcom/nianticproject/ingress/l/y;->e:Lcom/nianticproject/ingress/l/y;

    goto :goto_0

    .line 305
    :cond_3
    const-string/jumbo v0, "particle-filter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    sget-object v0, Lcom/nianticproject/ingress/l/y;->b:Lcom/nianticproject/ingress/l/y;

    goto :goto_0

    .line 308
    :cond_4
    sget-object v0, Lcom/nianticproject/ingress/l/y;->f:Lcom/nianticproject/ingress/l/y;

    goto :goto_0
.end method

.method static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 320
    const-string/jumbo v2, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    if-eqz v1, :cond_0

    const-string/jumbo v2, "networkLocationType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const-string/jumbo v2, "networkLocationType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/l/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/l/y;
    .locals 1
    .parameter

    .prologue
    .line 286
    const-class v0, Lcom/nianticproject/ingress/l/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/l/y;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/l/y;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/nianticproject/ingress/l/y;->g:[Lcom/nianticproject/ingress/l/y;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/l/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/l/y;

    return-object v0
.end method
