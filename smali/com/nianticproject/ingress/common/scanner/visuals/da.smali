.class final enum Lcom/nianticproject/ingress/common/scanner/visuals/da;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/da;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

.field public static final enum b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

.field public static final enum c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

.field private static final synthetic d:[Lcom/nianticproject/ingress/common/scanner/visuals/da;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/da;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/da;->a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/da;->b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->d:[Lcom/nianticproject/ingress/common/scanner/visuals/da;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/visuals/da;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/visuals/da;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->d:[Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/visuals/da;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/visuals/da;

    return-object v0
.end method
