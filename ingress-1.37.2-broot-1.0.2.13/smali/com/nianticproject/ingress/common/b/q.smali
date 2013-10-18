.class public final enum Lcom/nianticproject/ingress/common/b/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/b/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/b/q;

.field public static final enum b:Lcom/nianticproject/ingress/common/b/q;

.field public static final enum c:Lcom/nianticproject/ingress/common/b/q;

.field public static final enum d:Lcom/nianticproject/ingress/common/b/q;

.field public static final enum e:Lcom/nianticproject/ingress/common/b/q;

.field private static final synthetic h:[Lcom/nianticproject/ingress/common/b/q;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/nianticproject/ingress/common/b/q;

    const-string/jumbo v1, "LOW"

    const-string/jumbo v2, "ldpi"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/nianticproject/ingress/common/b/q;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->a:Lcom/nianticproject/ingress/common/b/q;

    .line 24
    new-instance v0, Lcom/nianticproject/ingress/common/b/q;

    const-string/jumbo v1, "MEDIUM"

    const-string/jumbo v2, "mdpi"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/nianticproject/ingress/common/b/q;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->b:Lcom/nianticproject/ingress/common/b/q;

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/b/q;

    const-string/jumbo v1, "HIGH"

    const-string/jumbo v2, "hdpi"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/nianticproject/ingress/common/b/q;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->c:Lcom/nianticproject/ingress/common/b/q;

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/b/q;

    const-string/jumbo v1, "XHIGH"

    const-string/jumbo v2, "xhdpi"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/nianticproject/ingress/common/b/q;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->d:Lcom/nianticproject/ingress/common/b/q;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/b/q;

    const-string/jumbo v1, "XXHIGH"

    const-string/jumbo v2, "xxhdpi"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/nianticproject/ingress/common/b/q;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->e:Lcom/nianticproject/ingress/common/b/q;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/b/q;

    sget-object v1, Lcom/nianticproject/ingress/common/b/q;->a:Lcom/nianticproject/ingress/common/b/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/b/q;->b:Lcom/nianticproject/ingress/common/b/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/b/q;->c:Lcom/nianticproject/ingress/common/b/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/b/q;->d:Lcom/nianticproject/ingress/common/b/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/b/q;->e:Lcom/nianticproject/ingress/common/b/q;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nianticproject/ingress/common/b/q;->h:[Lcom/nianticproject/ingress/common/b/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/nianticproject/ingress/common/b/q;->f:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/nianticproject/ingress/common/b/q;->g:I

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/b/q;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/nianticproject/ingress/common/b/q;->g:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/b/q;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/nianticproject/ingress/common/b/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/b/q;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/b/q;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/common/b/q;->h:[Lcom/nianticproject/ingress/common/b/q;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/b/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/b/q;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/q;->f:Ljava/lang/String;

    return-object v0
.end method
