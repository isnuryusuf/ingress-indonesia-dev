.class public final enum Lcom/nianticproject/ingress/common/scanner/visuals/a/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/scanner/visuals/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

.field public static final enum b:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

.field public static final enum c:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

.field private static final synthetic d:[Lcom/nianticproject/ingress/common/scanner/visuals/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    .line 92
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    const-string/jumbo v1, "WAVE"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    .line 93
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    const-string/jumbo v1, "DEATH"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->d:[Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/visuals/a/f;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/f;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->d:[Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/scanner/visuals/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/scanner/visuals/a/f;

    return-object v0
.end method
