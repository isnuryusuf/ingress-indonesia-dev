.class final enum Lcom/nianticproject/ingress/common/ui/b/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/ui/b/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/ui/b/n;

.field public static final enum b:Lcom/nianticproject/ingress/common/ui/b/n;

.field private static final synthetic c:[Lcom/nianticproject/ingress/common/ui/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/n;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->a:Lcom/nianticproject/ingress/common/ui/b/n;

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/n;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/ui/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/b/n;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/n;->a:Lcom/nianticproject/ingress/common/ui/b/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/n;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->c:[Lcom/nianticproject/ingress/common/ui/b/n;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/b/n;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/nianticproject/ingress/common/ui/b/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/n;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/ui/b/n;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->c:[Lcom/nianticproject/ingress/common/ui/b/n;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/ui/b/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/b/n;

    return-object v0
.end method
