.class public final enum Lcom/nianticproject/ingress/common/model/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/model/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/model/z;

.field public static final enum b:Lcom/nianticproject/ingress/common/model/z;

.field public static final enum c:Lcom/nianticproject/ingress/common/model/z;

.field public static final enum d:Lcom/nianticproject/ingress/common/model/z;

.field public static final enum e:Lcom/nianticproject/ingress/common/model/z;

.field private static final synthetic f:[Lcom/nianticproject/ingress/common/model/z;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/nianticproject/ingress/common/model/z;

    const-string/jumbo v1, "GAIN"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    .line 141
    new-instance v0, Lcom/nianticproject/ingress/common/model/z;

    const-string/jumbo v1, "CONSUME"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/model/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->b:Lcom/nianticproject/ingress/common/model/z;

    .line 142
    new-instance v0, Lcom/nianticproject/ingress/common/model/z;

    const-string/jumbo v1, "DAMAGE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/model/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->c:Lcom/nianticproject/ingress/common/model/z;

    .line 143
    new-instance v0, Lcom/nianticproject/ingress/common/model/z;

    const-string/jumbo v1, "SYNC"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/model/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    .line 144
    new-instance v0, Lcom/nianticproject/ingress/common/model/z;

    const-string/jumbo v1, "REFUND"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/model/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->e:Lcom/nianticproject/ingress/common/model/z;

    .line 139
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/model/z;

    sget-object v1, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/model/z;->b:Lcom/nianticproject/ingress/common/model/z;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/model/z;->c:Lcom/nianticproject/ingress/common/model/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/model/z;->e:Lcom/nianticproject/ingress/common/model/z;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/model/z;->f:[Lcom/nianticproject/ingress/common/model/z;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/model/z;
    .locals 1
    .parameter

    .prologue
    .line 139
    const-class v0, Lcom/nianticproject/ingress/common/model/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/z;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/model/z;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->f:[Lcom/nianticproject/ingress/common/model/z;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/model/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/model/z;

    return-object v0
.end method
