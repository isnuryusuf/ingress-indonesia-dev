.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field portraitHeight:I

.field portraitWidth:I

.field suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    .line 31
    iput p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    .line 32
    iput-object p3, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->suffix:Ljava/lang/String;

    .line 33
    return-void
.end method
