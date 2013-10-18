.class final enum Lcom/nianticproject/ingress/common/ui/b/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/ui/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/ui/b/e;

.field public static final enum b:Lcom/nianticproject/ingress/common/ui/b/e;

.field public static final enum c:Lcom/nianticproject/ingress/common/ui/b/e;

.field private static final synthetic d:[Lcom/nianticproject/ingress/common/ui/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/e;

    const-string/jumbo v1, "TERMINATED"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->a:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/e;

    const-string/jumbo v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/ui/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->b:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 22
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/e;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/ui/b/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/b/e;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/e;->a:Lcom/nianticproject/ingress/common/ui/b/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/e;->b:Lcom/nianticproject/ingress/common/ui/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/e;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->d:[Lcom/nianticproject/ingress/common/ui/b/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/b/e;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/e;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/ui/b/e;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/e;->d:[Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/ui/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/b/e;

    return-object v0
.end method
