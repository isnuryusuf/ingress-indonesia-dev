.class public final enum Lcom/nianticproject/ingress/ui/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nianticproject/ingress/ui/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nianticproject/ingress/ui/ae;

.field public static final enum b:Lcom/nianticproject/ingress/ui/ae;

.field public static final enum c:Lcom/nianticproject/ingress/ui/ae;

.field public static final enum d:Lcom/nianticproject/ingress/ui/ae;

.field private static final synthetic f:[Lcom/nianticproject/ingress/ui/ae;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/nianticproject/ingress/ui/ae;

    const-string/jumbo v1, "BAD_TITLE"

    const v2, 0x7f090098

    invoke-direct {v0, v1, v3, v2}, Lcom/nianticproject/ingress/ui/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ae;->a:Lcom/nianticproject/ingress/ui/ae;

    .line 13
    new-instance v0, Lcom/nianticproject/ingress/ui/ae;

    const-string/jumbo v1, "BAD_LOCATION"

    const v2, 0x7f090099

    invoke-direct {v0, v1, v4, v2}, Lcom/nianticproject/ingress/ui/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ae;->b:Lcom/nianticproject/ingress/ui/ae;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/ui/ae;

    const-string/jumbo v1, "BAD_DESCRIPTION"

    const v2, 0x7f09009a

    invoke-direct {v0, v1, v5, v2}, Lcom/nianticproject/ingress/ui/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ae;->c:Lcom/nianticproject/ingress/ui/ae;

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/ui/ae;

    const-string/jumbo v1, "INVALID"

    const v2, 0x7f09009b

    invoke-direct {v0, v1, v6, v2}, Lcom/nianticproject/ingress/ui/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nianticproject/ingress/ui/ae;->d:Lcom/nianticproject/ingress/ui/ae;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/ui/ae;

    sget-object v1, Lcom/nianticproject/ingress/ui/ae;->a:Lcom/nianticproject/ingress/ui/ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/ui/ae;->b:Lcom/nianticproject/ingress/ui/ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/ui/ae;->c:Lcom/nianticproject/ingress/ui/ae;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/ui/ae;->d:Lcom/nianticproject/ingress/ui/ae;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/ui/ae;->f:[Lcom/nianticproject/ingress/ui/ae;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/nianticproject/ingress/ui/ae;->e:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ae;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/nianticproject/ingress/ui/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/ae;

    return-object v0
.end method

.method public static values()[Lcom/nianticproject/ingress/ui/ae;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/nianticproject/ingress/ui/ae;->f:[Lcom/nianticproject/ingress/ui/ae;

    invoke-virtual {v0}, [Lcom/nianticproject/ingress/ui/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/ui/ae;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/ui/ae;->e:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
