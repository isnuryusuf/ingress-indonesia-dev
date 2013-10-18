.class public final enum Lcom/nianticproject/ingress/shared/rpc/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/o;

.field public static final enum b:Lcom/nianticproject/ingress/shared/rpc/o;

.field public static final enum c:Lcom/nianticproject/ingress/shared/rpc/o;

.field public static final enum d:Lcom/nianticproject/ingress/shared/rpc/o;

.field public static final enum e:Lcom/nianticproject/ingress/shared/rpc/o;

.field private static final synthetic f:[Lcom/nianticproject/ingress/shared/rpc/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/o;

    const-string/jumbo v1, "ACCOUNT_ALREADY_ACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/rpc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->a:Lcom/nianticproject/ingress/shared/rpc/o;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/o;

    const-string/jumbo v1, "INVALID_ACTIVATION_CODE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/shared/rpc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->b:Lcom/nianticproject/ingress/shared/rpc/o;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/o;

    const-string/jumbo v1, "INVALID_PLAYER_GUID"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/shared/rpc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->c:Lcom/nianticproject/ingress/shared/rpc/o;

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/o;

    const-string/jumbo v1, "NO_INVITES_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/shared/rpc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->d:Lcom/nianticproject/ingress/shared/rpc/o;

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/o;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/shared/rpc/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->e:Lcom/nianticproject/ingress/shared/rpc/o;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/o;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/o;->a:Lcom/nianticproject/ingress/shared/rpc/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/o;->b:Lcom/nianticproject/ingress/shared/rpc/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/o;->c:Lcom/nianticproject/ingress/shared/rpc/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/o;->d:Lcom/nianticproject/ingress/shared/rpc/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/o;->e:Lcom/nianticproject/ingress/shared/rpc/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->f:[Lcom/nianticproject/ingress/shared/rpc/o;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/o;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/o;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/o;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/o;->f:[Lcom/nianticproject/ingress/shared/rpc/o;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/o;

    return-object v0
.end method
