.class public final enum Lcom/nianticproject/ingress/common/w/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/w/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/w/x;

.field public static final enum b:Lcom/nianticproject/ingress/common/w/x;

.field public static final enum c:Lcom/nianticproject/ingress/common/w/x;

.field public static final enum d:Lcom/nianticproject/ingress/common/w/x;

.field private static final synthetic e:[Lcom/nianticproject/ingress/common/w/x;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/nianticproject/ingress/common/w/x;

    const-string/jumbo v1, "STATE_NOT_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/x;->a:Lcom/nianticproject/ingress/common/w/x;

    .line 11
    new-instance v0, Lcom/nianticproject/ingress/common/w/x;

    const-string/jumbo v1, "STATE_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/w/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/x;->b:Lcom/nianticproject/ingress/common/w/x;

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/common/w/x;

    const-string/jumbo v1, "STATE_LOADING"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/w/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/x;->c:Lcom/nianticproject/ingress/common/w/x;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/common/w/x;

    const-string/jumbo v1, "STATE_UNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/w/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/x;->d:Lcom/nianticproject/ingress/common/w/x;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/w/x;

    sget-object v1, Lcom/nianticproject/ingress/common/w/x;->a:Lcom/nianticproject/ingress/common/w/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/w/x;->b:Lcom/nianticproject/ingress/common/w/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/w/x;->c:Lcom/nianticproject/ingress/common/w/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/w/x;->d:Lcom/nianticproject/ingress/common/w/x;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/common/w/x;->e:[Lcom/nianticproject/ingress/common/w/x;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/w/x;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/nianticproject/ingress/common/w/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w/x;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/w/x;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/nianticproject/ingress/common/w/x;->e:[Lcom/nianticproject/ingress/common/w/x;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/w/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/w/x;

    return-object v0
.end method
