.class public final enum Lcom/nianticproject/ingress/common/c/bp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/common/c/bp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/common/c/bp;

.field public static final enum b:Lcom/nianticproject/ingress/common/c/bp;

.field public static final enum c:Lcom/nianticproject/ingress/common/c/bp;

.field private static final synthetic e:[Lcom/nianticproject/ingress/common/c/bp;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/c/bp;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v4, v3}, Lcom/nianticproject/ingress/common/c/bp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/c/bp;

    const-string/jumbo v1, "NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/common/c/bp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bp;->b:Lcom/nianticproject/ingress/common/c/bp;

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/c/bp;

    const-string/jumbo v1, "HIGH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/common/c/bp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bp;->c:Lcom/nianticproject/ingress/common/c/bp;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bp;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->b:Lcom/nianticproject/ingress/common/c/bp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->c:Lcom/nianticproject/ingress/common/c/bp;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nianticproject/ingress/common/c/bp;->e:[Lcom/nianticproject/ingress/common/c/bp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nianticproject/ingress/common/c/bp;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/common/c/bp;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/nianticproject/ingress/common/c/bp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bp;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/common/c/bp;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/common/c/bp;->e:[Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/common/c/bp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/c/bp;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bp;->d:I

    return v0
.end method
