.class public final enum Lcom/nianticproject/ingress/shared/rpc/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/shared/rpc/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/shared/rpc/r;

.field private static final synthetic b:[Lcom/nianticproject/ingress/shared/rpc/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/r;

    const-string/jumbo v1, "PLAYER_GUID_INVALID"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/r;->a:Lcom/nianticproject/ingress/shared/rpc/r;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nianticproject/ingress/shared/rpc/r;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/r;->a:Lcom/nianticproject/ingress/shared/rpc/r;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/r;->b:[Lcom/nianticproject/ingress/shared/rpc/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/r;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/nianticproject/ingress/shared/rpc/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/r;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/shared/rpc/r;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nianticproject/ingress/shared/rpc/r;->b:[Lcom/nianticproject/ingress/shared/rpc/r;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/shared/rpc/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/shared/rpc/r;

    return-object v0
.end method
