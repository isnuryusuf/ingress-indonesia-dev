.class public final enum Lcom/nianticproject/ingress/server/pushnotification/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/server/pushnotification/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/server/pushnotification/a;

.field public static final enum b:Lcom/nianticproject/ingress/server/pushnotification/a;

.field private static final synthetic c:[Lcom/nianticproject/ingress/server/pushnotification/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/server/pushnotification/a;

    const-string/jumbo v1, "RedirectToAddress"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/server/pushnotification/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/server/pushnotification/a;->a:Lcom/nianticproject/ingress/server/pushnotification/a;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/server/pushnotification/a;

    const-string/jumbo v1, "DeliverAsAddressed"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/server/pushnotification/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/server/pushnotification/a;->b:Lcom/nianticproject/ingress/server/pushnotification/a;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/server/pushnotification/a;

    sget-object v1, Lcom/nianticproject/ingress/server/pushnotification/a;->a:Lcom/nianticproject/ingress/server/pushnotification/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/server/pushnotification/a;->b:Lcom/nianticproject/ingress/server/pushnotification/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticproject/ingress/server/pushnotification/a;->c:[Lcom/nianticproject/ingress/server/pushnotification/a;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/server/pushnotification/a;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/nianticproject/ingress/server/pushnotification/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/server/pushnotification/a;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/server/pushnotification/a;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/nianticproject/ingress/server/pushnotification/a;->c:[Lcom/nianticproject/ingress/server/pushnotification/a;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/server/pushnotification/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/server/pushnotification/a;

    return-object v0
.end method
