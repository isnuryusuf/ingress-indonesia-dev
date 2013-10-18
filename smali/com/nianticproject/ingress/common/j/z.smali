.class final enum Lcom/nianticproject/ingress/common/j/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/j/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/j/z;

.field public static final enum b:Lcom/nianticproject/ingress/common/j/z;

.field public static final enum c:Lcom/nianticproject/ingress/common/j/z;

.field public static final enum d:Lcom/nianticproject/ingress/common/j/z;

.field public static final enum e:Lcom/nianticproject/ingress/common/j/z;

.field public static final enum f:Lcom/nianticproject/ingress/common/j/z;

.field private static final synthetic g:[Lcom/nianticproject/ingress/common/j/z;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "Shader"

    invoke-direct {v0, v1, v3}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->a:Lcom/nianticproject/ingress/common/j/z;

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "Buffer"

    invoke-direct {v0, v1, v4}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->b:Lcom/nianticproject/ingress/common/j/z;

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "FrameBuffer"

    invoke-direct {v0, v1, v5}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->c:Lcom/nianticproject/ingress/common/j/z;

    .line 50
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "RenderBuffer"

    invoke-direct {v0, v1, v6}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->d:Lcom/nianticproject/ingress/common/j/z;

    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "Texture"

    invoke-direct {v0, v1, v7}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->e:Lcom/nianticproject/ingress/common/j/z;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/j/z;

    const-string/jumbo v1, "Program"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->f:Lcom/nianticproject/ingress/common/j/z;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/common/j/z;

    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->a:Lcom/nianticproject/ingress/common/j/z;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->b:Lcom/nianticproject/ingress/common/j/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->c:Lcom/nianticproject/ingress/common/j/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->d:Lcom/nianticproject/ingress/common/j/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/j/z;->e:Lcom/nianticproject/ingress/common/j/z;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/j/z;->f:Lcom/nianticproject/ingress/common/j/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/j/z;->g:[Lcom/nianticproject/ingress/common/j/z;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/j/z;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/nianticproject/ingress/common/j/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/z;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/j/z;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nianticproject/ingress/common/j/z;->g:[Lcom/nianticproject/ingress/common/j/z;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/j/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/j/z;

    return-object v0
.end method
